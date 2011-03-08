require 'active_support/inflector'
require 'thor'
require 'thor/group'

class NilClass
  def empty?
    true
  end
end

class NetzkeConfig < Thor::Group
  include Thor::Actions

  # group used when displaying thor tasks with: thor list or thor -T
  # group :netzke

  # Define arguments 
  argument :location, :type => :string, :default => '~/netzke/plugin-modules', :desc => 'Location where netzke modules are to be stored (locally)' 
  # argument :my_arg_name, :type (:string, :hash, :array, :numeric), :default, :required, :optional, :desc, :banner

  class_option :extjs, :type => :string, :default => nil, :desc => 'Location of ExtJS 3.x.x library'

  class_option :branch, :type => :string, :default => 'rails3', :desc => 'Branch to use for netzke modules'
  class_option :account, :type => :string, :default => 'skozlov', :desc => 'Github account to get Netzke plugins from'
  class_option :force_all, :type => :boolean, :default => false, :desc => 'Force force of all files, including existing modules and links'
  class_option :force_links, :type => :boolean, :default => true, :desc => 'Force force of symbolic links' 
  class_option :ext_version, :type => :string, :default => '3.2.1', :desc => 'ExtJS version to download'
  class_option :download, :type => :boolean, :default => false, :desc => 'Download ExtJS if not found in specified extjs location'

  class_option :modules, :type => :string, :desc => 'Module specifications for each module, fx neztke_ar:master@skozlov,netzke_core:rails3@kmandrup'
  class_option :config_file, :default => '~/netzke/modules.config', :type => :string, :desc => 'Location of config file for default module specifications' 

  GITHUB = 'http://github.com'

  def main 
    @application_dir = Dir.pwd
    load_config_file
    setup_defaults
    define_modules
    exit(-1) if !valid_context?
    configure_modules
    configure_extjs if options[:extjs] 
  end   

  protected
  attr_accessor :modules_config, :module_specifications, :default_module_specs, :application_dir

  def load_config_file     
    @default_module_specs = ""
    config_file = options[:config_file] 
    config_file.gsub! /^~/, ENV['HOME']
    if File.exists?(config_file)
      @default_module_specs = File.open(config_file).read 
    else
      say "module config file at #{config_file} not found"
    end
  end

  def setup_defaults       
    @modules_config ||= {} 
    puts "default_module_specs: '#{default_module_specs}'"
    all_modules = []         
    all_modules << default_module_specs if !default_module_specs.empty?
    all_modules << options[:modules] if options[:modules]
    puts "all modules: #{all_modules}"
    @module_specifications = all_modules.join(',') || ""
  end

  def define_modules
    @modules_config ||= {}
    return if module_specifications.empty?
    
    puts "module_specifications: #{module_specifications}"
    module_defs = module_specifications.split(",")
    module_defs.each do |module_spec|
      module_spec = module_spec.strip
      if module_spec && !module_spec.empty?
        spec = module_spec.strip.split(":")
        module_name = spec[0]
        if spec[1]
          branch, account = spec[1].split("@")            
        else
          branch, account = spec[0].split("@") if spec[0]
          branch, account = "", "" if !spec[0]
        end
        set_module_config module_name.to_sym, :branch => branch, :account => account
      end
    end
  end

  def default_modules 
    return [] if default_module_specs && !default_module_specs.strip.empty?
    ["netzke-core", "netzke-basepack"]    
  end

  def set_module_config name, module_options = {}
    mconfig = modules_config[name.to_sym] = {}
    mconfig[:branch]  = module_options[:branch] || options[:branch]
    mconfig[:account] = module_options[:account] || options[:account]
  end

  def module_config name 
    modules_config[name.to_sym]
  end
  
  def valid_context?
    if !rails3_app?
      say "Must be run from a rails 3 application root directory", :red      
      return false
    end      
    true
  end

  def get_module_names
    default_modules | modules_config.keys.map{|k| k.to_s}    
  end
  
  def configure_modules  
    create_module_container_dir  
    inside "#{location}" do
      get_module_names.each do |module_name|
        get_module module_name
        config_netzke_plugin module_name
      end        
    end
  end

  def create_module_container_dir
    if File.directory?(location)
      run "rm -rf #{location}" if force_all?
    end
    empty_directory "#{location}" if !File.directory?(location)
  end


  def get_module module_name   
    run "rm -rf #{module_name}" if force_all?
    if File.directory? module_name
      update_module module_name
    else
      create_module module_name
    end
  end

  def update_module module_name 
    config = module_config(module_name)          
    return if !config
    inside module_name do      
      branch = config[:branch] 
      run "git checkout #{branch}"
      run "git rebase origin/#{branch}" 
      run "git pull" 
    end
  end
    
  def create_module module_name
    # create dir for module by cloning  
    config = module_config(module_name)    
    return if !config    
    account = config[:account]    
    run "git clone #{github account}/#{module_name}.git #{module_name}" 
    inside module_name do   
      branch = config[:branch]      
      run "git checkout #{branch}"
    end
  end

  def config_netzke_plugin module_name
    inside application_dir do
      inside 'vendor/plugins' do
        module_src = local_module_src(module_name)               
        if !force_links? && File.exist?(module_name)      
          say "File or link vendor/plugins/#{module_name} already exists", :yellow
        end
        run "rm -rf #{module_name}" if force_links?
        run "ln -s #{module_src} #{module_name}"
      end
    end
  end

  def configure_extjs
    extjs_dir = options[:extjs]
    if !File.directory? extjs_dir
      say "No directory for extjs found at #{extjs_dir}", :red        
      extjs_dir = download_extjs if download?
    end      
    
    return if !File.directory(extjs_dir)
    
    inside extjs_dir do                
      if !File.exist? 'ext-all.js'
        say "Directory  #{extjs_dir} does not appear to contain a valid ExtJS library. File 'ext-all.js' missing.", :red
        return
      end
    end
          
    inside application_dir do   
      inside 'public' do     
        run "rm -f extjs" if force_links?        
        run "ln -s #{extjs_dir} extjs"    
      end
    end
  end

  private

  def download?
    options[:download]    
  end

  def force_all?
    options[:force_all]
  end    

  def force_links?
    options[:force_links]
  end    

  def branch
    options[:branch]
  end

  def download_extjs 
    extjs_dir = options[:extjs]
    run "mkdir -p #{extjs_dir}"
    run %Q{ cd #{extjs_dir} && curl -s -o extjs.zip "http://www.extjs.com/deploy/ext-#{ext_version}.zip" && unzip -q extjs.zip && rm extjs.zip }    
    File.join(extjs_dir, extjs)
  end

  def github account
    "#{GITHUB}/#{account}"
  end  

  def rails3_app?
    File.exist? 'Gemfile'
  end

  def local_module_src module_name
    "#{location}/#{module_name}"
  end
  
end
                  
