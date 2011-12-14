module DateUtil
  module Localize
    # http://stackoverflow.com/questions/7580238/how-do-i-parse-non-english-dates-with-datetime-strptime-in-ruby    
    # value.nil? ? nil : I18n.localize(value)
    def localized value
      value
    end
    
    def to_english_date(date_string, country_code = :sv)
      case country_code.to_sym
      when :sv
        date_string.gsub(/may|okt/, 'may' => 'May', 'okt' => 'Oct')
      else
        raise ArgumentError, "Country code #{sw} not currently supported, please extend DateUtil::Localize"
      end
    end
  end
end