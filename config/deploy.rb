set :application, "harvest"
set :user, "root"
set :repository,  "svn+ssh://www.xmlv.com/usr/local/svn/sites/sharvest/harvest"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/rails/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "trout.sharedharvest.co.uk"
role :web, "trout.sharedharvest.co.uk"
role :db,  "trout.sharedharvest.co.uk", :primary => true
