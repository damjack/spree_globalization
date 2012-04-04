Spree::AppConfiguration.class_eval do
  preference :locales, :string, :default => "it,en"
  
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
end
