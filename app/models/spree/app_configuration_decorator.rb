Spree::AppConfiguration.class_eval do
  preference :locales, :string, :default => "it,en"
end
