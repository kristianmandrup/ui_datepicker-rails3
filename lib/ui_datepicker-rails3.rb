# FormtasticDatepickerInputs

module UiDatePickerRails3
  def self.activate name
    case name.to_sym
    when :simple_form
      raise "SimpleForm not defined" unless defined?(SimpleForm)
      require 'simple_form/inputs_ext'
    when :formtastic
      raise "Formtastic not defined" unless defined?(Formtastic)
      require 'formtastic/inputs_ext'
    when :active_admin
      raise "ActiveAdmin not defined" unless defined?(ActiveAdmin)
      require 'active_admin/inputs_ext'
    else
      raise NotImplementedError, "Unsupported Formbuilder or framework: #{name}"
    end
  end
end