Spree::Core::Engine.routes.draw do
  filter :locale, :exclude => /^\/admin/ if SpreeGlobalization.use_locale_filter
end
