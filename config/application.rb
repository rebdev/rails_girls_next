# require gems and classes
require 'bundler'
Bundler.require
$: << File.expand_path('../', __FILE__) # Add the path one dir up from this file (ie, the entire project) to the $LOAD_PATH. 
                                        # Adding a dir to the load path means it's looked in when you use 'require' in your project.
                                        # '$:' is the predefined variable for $LOAD_PATH, ie they mean exactly the same thing.
Dir['./app/**/*.rb'].sort.each { |file| require file }

# configure sinatra
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'assets') }
set :erb, :layout => :'layouts/application'   # where the embedded ruby and css files will be located

