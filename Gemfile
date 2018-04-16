source 'https://rubygems.org'

gem 'berkshelf', :group => [:production, :integration]
gem 'chef', :group => [:production, :test, :integration]

group :production do
  gem 'kitchen-openstack'
end

group :integration do
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
end

group :test do
  gem 'foodcritic', '>=3.0.5'
  gem 'cookstyle',  '~> 2.1'
  gem 'rubocop'
  gem 'rake'
  gem 'chefspec'
  gem 'rspec'
  gem 'codeclimate-test-reporter', require: nil
end

group :foss do
  gem 'stove'
end
