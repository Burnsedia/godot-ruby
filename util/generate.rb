require 'json'

require_relative 'generator'
require_relative 'generator/type'
require_relative 'generator/type/base'
require_relative 'generator/type/struct'
require_relative 'generator/type/stack'
require_relative 'generator/type/stack_pointer'
require_relative 'generator/type/heap'
require_relative 'generator/type/heap_pointer'
require_relative 'generator/types'
require_relative 'generator/class'
require_relative 'generator/class/base'
require_relative 'generator/class/struct'
require_relative 'generator/class/stack'
require_relative 'generator/class/heap'
require_relative 'generator/function'
require_relative 'generator/function/argument'

Dir.glob("#{__dir__}/generator/classes/*.rb").each do |file|
  require file
end

#puts Godot::Generator::Class.generate_class_static_definitions
#puts Godot::Generator::Type.generate_godot_convert_functions
#puts Godot::Generator::Class.generate_class_initialization_statements
puts Godot::Generator::Class.get_class(:Vector2).instance_functions
