# NetzkeConfig

This task helps configure a Netzke app with Netzke submodules and optionally ExtJS for Netzke development and debugging.
  
## Install

<code>gem install netzke_config</code>

## Usage

Must be run frokm the root of a Rails 3 Netzke application.

+Display usage instructions+  

<code>netzke_config --help</code> 

*Note: Ignore the double netzke_config after usage: (which is currently an "error" in Thor)*

## Usage examples

+Use defaults+

<code>$ netzke_config</code>

Clones *netzke* modules from 'skozlov' github account in <code>~/netzke/plugin-modules</code>.

+Clone modules from specific github account+

<code>$ netzke_config --account kmandrup</code>

Clones *netzke* modules from 'kmandrup' github account in <code>~/netzke/plugin-modules</code>.

+Specify location of netzke modules+

<code>$ netzke_config ../my/place</code>

Retrieves and places *netzke* modules in <code>../my/place</code>.

+Create symbolic link to existing *ExtJs* library and force overwrite of all symbolic links+

<code>$ netzke_config --force-links --extjs ~/code/ext-3.2.1/</code>

+Force overwrite of local *netzke* modules by newly retrieved remote modules. Also forces overwrite of all symbolic links+

<code>$ netzke_config --force-all --extjs ~/code/ext-3.2.1/</code>

+Attempt download of *ExtJs* library if it doesn't exist+

<code>$ netzke_config --overwrite-all --extjs ~/code/ext-3.2.1/ --download</code>

+Detailed specifications of each module to include as plugin+

<code>$ netzke_config --modules neztke_ar:master@skozlov,netzke_core:rails3@kmandrup</code>

+Using config file for default modules specifications+
     
*~/netzke/modules.config* (default config file)
<pre>
netzke_core:rails3@kmandrup
</pre>

<code>$ netzke_config --modules neztke_ar:master@skozlov</code>

+Specifying custom config file for default modules specifications+
     
*~/configurations/modules.config* (default config file)
<pre>
netzke-core:rails3@kmandrup, neztke-basepack:rails3@skozlov 
</pre>

Modules specs in the modules option always override those found in the config file

<code>$ netzke_config --modules neztke_ar:master@skozlov,neztke-basepack:rails3@kmandrup --config-file ~/configurations/modules.config</code>

## Copyright ##

Copyright (c) 2009 Kristian Mandrup

