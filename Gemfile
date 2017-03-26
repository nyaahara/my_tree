source 'https://rubygems.org'

# rails standard
gem 'rails', '~> 5.0.0'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# layout
gem 'bootstrap-sass'

# utility
gem 'config'
gem 'dotenv-rails'
gem 'slim-rails'
gem 'ransack'
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'ranked-model'
gem 'gretel'
gem 'impressionist'
gem 'sorcery'
gem 'pundit'
gem 'paper_trail'
gem 'rambulance'
gem 'sitemap_generator'
gem 'rails-i18n', '~> 5.0.0'
gem 'enumerize'
gem 'paperclip', '~> 5.0.0'
gem 'meta-tags'
gem 'friendly_id', '~> 5.1.0'
gem 'js-routes'
# TODO: paranoiaのversionが2.2.0.preなのでpreをはずす。他のバージョンを使うとエラーが起きる
gem 'paranoia', '~> 2.2.0.pre'
gem 'summon_bot'

# frontend
source 'https://rails-assets.org' do
  gem 'rails-assets-vue'
  gem 'rails-assets-lodash'
end

group :development, :test do
  gem 'hirb'
  gem 'hirb-unicode'

  # js testing
  gem 'teaspoon'
  gem 'guard-teaspoon'

  # debug
  gem 'tapp'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'launchy'

  # test
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner', require: false
  gem 'ffaker'
  gem 'test-queue'
  gem 'shoulda-matchers'
  gem 'timecop'

  # utility
  gem 'simplecov'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # for ide debug
  gem 'ruby-debug-ide'
  gem 'debase'

  # for cui debug
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'awesome_print'
  gem 'web-console'

  # spec inspection
  gem 'rack-mini-profiler'
  gem 'bullet'

  # Tools
  gem 'html2slim'
  gem 'rubocop'
  gem 'slim_lint'
end
