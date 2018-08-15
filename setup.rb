require_relative 'gemfile'
require_relative 'debug/pry'

def apply!
  add_gems
  debug_apply!
end

def debug_apply!
  setting_pry!
end

apply!
