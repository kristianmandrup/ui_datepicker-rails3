require 'date_util/localize'
require 'rails/railtie'

module UiDatePickerRails3
  def self.activate *names
    names = names.flatten
    names.each {|name| activate_one name }
  end

  def self.activate_one name
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
  
  def self.ui_theme theme
    "ui/#{theme}/jquery-ui-theme" }
  end
  
  def self.ui_localizers *country_codes
    country_codes.map {|cc| "ui/i18n/jquery.ui.datepicker-#{cc}" }
  end
end