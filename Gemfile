source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'

# Database PostgreSQL
gem 'pg'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#
gem 'sprockets', git: 'https://github.com/rails/sprockets/'

# basic
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n', '~> 5.0.0'
gem 'devise_lastseenable', git: "https://github.com/astonfu/devise_lastseenable"
gem "pundit", git: 'https://github.com/elabs/pundit'
gem 'will_paginate','~> 3.1.0'  # 分页

gem 'rucaptcha'   # 验证码
gem 'letter_avatar' # 头像
gem 'ruby-pinyin'

gem 'friendly_id', '~> 5.1.0'

# 三方平台 OAuth 验证登陆
gem 'omniauth'
gem "omniauth-wechat-oauth2", git: 'https://github.com/yangsr/omniauth-wechat-oauth2'
gem 'omniauth-weibo-oauth2'

# soft delete
# gem "paranoia", "~> 2.2"

# cache
gem 'dalli'

# features
gem 'rqrcode'

# 存储
gem 'carrierwave', git: 'https://github.com/carrierwaveuploader/carrierwave'
gem 'file_validators'
gem 'mini_magick'

# UI
gem 'bootstrap', '~> 4.0.0.alpha5'
gem 'autoprefixer-rails'
gem "font-awesome-rails"
gem 'tether-rails'
gem 'simple_form'
gem "chartkick"   # 图表
gem 'trix'

# 处理和验证
gem 'client_side_validations'
gem 'client_side_validations-simple_form'
gem "auto_strip_attributes", "~> 2.1"   # before validate 处理 attribute
# gem 'attribute_normalizer'  # 处理传入的 attribute

# 优化
# gem 'bulk_insert'
gem 'goldiloader'   # n+1 query

# 安全
gem 'rack-attack'

# JavaScript
gem 'rails-timeago', '~> 2.0'

# Admin
gem 'rails_admin', '~> 1.0'
gem 'rails_admin-i18n'
gem 'rails-settings-cached'
gem 'exception_notification'
gem 'pghero'
gem 'ahoy_matey'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # 开发测试的环境变量，在根目录里的 .env 文件里配置
  gem 'dotenv-rails'
  gem 'jasmine-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'

  gem 'pry-byebug'
  gem 'pry-rails'
  gem "better_errors"
  gem "binding_of_caller"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem "capistrano", "~> 3.6", require: false
  gem 'capistrano-rbenv', '~> 2.0', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano-rails', '~> 1.1', require: false

  # 性能
  gem 'bullet'
end

group :test do
  gem 'minitest-reporters'
  gem 'database_cleaner'
end
