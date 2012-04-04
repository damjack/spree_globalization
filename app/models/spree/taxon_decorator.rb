Spree::Taxon.class_eval do
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  
  translates :name, :description, :permalink, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG, :attributes => [:name, :description, :permalink]
  
  # Creates permalink based on Stringex's .to_url method
  def set_permalink
    if parent_id.nil?
      self.permalink = name.to_url if self.permalink.blank?
    else
      parent_taxon = Spree::Taxon.find(parent_id)
      self.permalink = [parent_taxon.permalink, (self.permalink.blank? ? name.to_url : self.permalink.split('/').last)].join('/')
    end
  end
end
