setup_path = File.dirname(__FILE__)

require_relative "#{setup_path}/gemfile"
require_relative "#{setup_path}/debug/pry"

def apply!
  add_gems
  debug_apply!
end

def debug_apply!
  setting_pry!
end

apply!
