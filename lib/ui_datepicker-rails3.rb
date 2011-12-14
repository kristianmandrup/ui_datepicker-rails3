require 'date_util/localize'

module UiDatePickerRails3
  def self.activate name
    valid_framework? name
    load_extension name
  end

  def load_extension name
    require "#{name}/inputs_ext"
  rescue Exception => e
    raise NotImplementedError, "Unsupported Formbuilder or framework: #{name} - #{e}"
  end

  def self.valid_framework? name  
    case name.to_sym
    when :simple_form
      raise ArgumentError, "SimpleForm not defined" unless defined?(SimpleForm)
    when :formtastic
      raise ArgumentError, "Formtastic not defined" unless defined?(Formtastic)
    when :active_admin
      raise ArgumentError, "ActiveAdmin not defined" unless defined?(ActiveAdmin)
    end
  end
end