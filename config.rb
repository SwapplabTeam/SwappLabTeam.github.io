# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

activate :directory_indexes

set :relative_links, true
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :layout, 'layouts/application'

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
  deploy.branch = 'master'
end
