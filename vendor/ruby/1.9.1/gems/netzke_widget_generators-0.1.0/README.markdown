# Netzke widget generators

Rails 3 generators to quickly generate skeletons for custom Netzke widgets based on a base class (typically in basepackage). 

Currently there are generators for the following base widgets:

* Tree widget
* Border Layout Panel
* Grid Panel

## Install

+As system gem:+

<code>gem install netzke_widget_generators</code>

+In rails app:+

Add to Gemfile:

<code>gem 'netzke_widget_generators'</code>

Run bundler

<code>$ bundle install</code>

## Usage

### Tree widget

<code>rails g tree_widget my_tree --root-node "All Bosses"</code>

### Border Layout Panel

<code>rails g blp_widget my_blp Boss</code>

### Grid Panel

<code>rails g grid_panel_widget my_grid</code>

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Kristian Mandrup. See LICENSE for details.
