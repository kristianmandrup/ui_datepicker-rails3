require 'active_admin/inputs/ui_date_picker_input'

module ActiveAdmin
  module Inputs
    class UiDateTimePickerInput < UiDatePickerInput
      def input_html_options
        options = super
        options[:class] = [options[:class], "ui-datetime-picker"].compact.join(' ')
        options
      end
    end
  end
end
