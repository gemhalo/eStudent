require 'thor/group'


class NetzkeConfig < Thor::Group
  include Thor::Actions

  # group used when displaying thor tasks with: thor list or thor -T
  group :netzke

  # Define arguments 
  argument :location, :type => :string, :default => '~/netzke/modules', :desc => 'location where netzke modules are stored' 
  # argument :my_arg_name, :type (:string, :hash, :array, :numeric), :default, :required, :optional, :desc, :banner

  class_option :extjs, :type => :string, :desc => 'location of extjs', :optional => true

  NETKE_GITHUB = 'http://github.com/skozlov/'

  def main
    check_valid_context
    create_module_container_dir
    clone_modules
    checkout_rails3
    pull_changes
    create_symlinks 
    config_extjs if options[:extjs] 
  end   

  protected

  def check_valid_context
    if !File.directory? 'lib/netzke' && !File.exist? 'Gemfile'
      say "Must be run from a Netzke rails3 application root directory", :red
      exit -1
    end
  end
  
  def create_module_container_dir  
    empty_directory "#{location}"
  end

  def clone_modules  
    inside "#{location}" do
      ["netzke-core", "netzke-basepack"].each do |module_name|
        get_module module_name
        config_netzke_plugin module_name
      end        
    end
  end

  def get_module module_name
    if File.directory? module_name
      update_module module_name
    else
      create_module module_name
    end
  end

  def update_module module_name
    inside module_name do
      run "git checkout rails3"
      run "git rebase origin/rails3" 
      run "git pull" 
    end
  end
    
  def create_module module_name
    empty_directory module_name
    inside module_name do
      run "git clone #{NETKE_GITHUB}/#{module_name}" 
      run "git checkout rails3"
    end
  end

  def config_netzke_plugin module_name
    inside 'vendor/plugins' do
      module_src = local_module_src(module_name)
      run "ln -s #{module_src} #{module_name}"
    end
  end

  def config_extjs
    extjs_dir = options[:extjs]
    if !File.directory? extjs_dir
      say "No directory for extjs found at #{extjs_dir}", :red 
      return
    else
      inside extjs_dir do                
        if !File.exist? 'ext-all.js'
          say "Directory  #{extjs_dir} does not appear to contain a valid ExtJS library. File 'ext-all.js' missing.", :red
          return
        end
      end
      inside 'public' do    
        run "ln -s #{options[:extjs]} extjs"    
      end
    end
  end

  private

  def local_module_src module_name
    "#{options[:location]}/#{module_name}"
  end
  
end
                  
