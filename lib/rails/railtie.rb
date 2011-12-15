# Configure Rails 3.0 to use public/javascripts/jquery et al
module UiDatePicker
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do        
        if ::Rails.root.join("public/javascripts/jquery-ui.min.js").exist?
          jq_defaults = %w(jquery jquery-ui)
          jq_defaults.map!{|a| a + ".min" } if ::Rails.env.production?
        else
          jq_defaults = ::Rails.env.production? ? %w(jquery.min) : %w(jquery)
        end
        
        config.action_view.javascript_expansions[:defaults] << 'jquery_ujs'
      end
    end
  end
end