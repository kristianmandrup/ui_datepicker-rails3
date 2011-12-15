require 'base_helper'

describe UiDatePickerRails3 do
  describe 'activate' do
    context 'formtastic' do
      before do
        require 'formtastic'
        UiDatePickerRails3.activate :formtastic
      end

      specify { defined?(Formtastic::Inputs::UiDatePickerInput).should be_true }
      specify { defined?(Formtastic::Inputs::UiDateTimePickerInput).should be_true }
    end

    context 'simple_form' do
      before do
        require 'simple_form'
        UiDatePickerRails3.activate :simple_form
      end

      specify { defined?(SimpleForm::Inputs::UiDatePickerInput).should be_true }
      specify { defined?(SimpleForm::Inputs::UiDateTimePickerInput).should be_true }
    end

    context 'active_admin' do
      before do
        require 'active_admin'
        UiDatePickerRails3.activate :active_admin
      end

      specify { defined?(ActiveAdmin::Inputs::UiDatePickerInput).should be_true }
      specify { defined?(ActiveAdmin::Inputs::UiDateTimePickerInput).should be_true }
    end
  end
end