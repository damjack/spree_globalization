Spree::Taxonomy.class_eval do
  translates :name
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
  
  private
    def set_name
      if self.root
        self.root.update_attributes(attrs_translations_for(:name))
      else
        self.root = Spree::Taxon.create!({ :taxonomy_id => self.id, :name => self.name })
      end
    end
end
