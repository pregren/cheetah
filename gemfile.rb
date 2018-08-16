def add_gems
  gem_group :development, :test do
    gem 'pry-rails'
    gem 'pry-doc'
    gem 'pry-rails'
    gem 'pry-state'
    gem 'pry-byebug'
    gem 'pry-stack_explorer'
    gem 'awesome_print'
    gem 'better_errors'
    gem 'binding_of_caller'
  end
  run_bundle
  
  git add: '.'
  git commit: %( -m 'add gemfiles' )
end
