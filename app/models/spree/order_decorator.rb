Spree::Order.class_eval do
  # override this to also set current user locale for email i18n
  def deliver_order_confirmation_email
    if Spree::Config[:use_locale_filter]
      update_attribute(:locale, I18n.locale)
      begin
        Spree::OrderMailer.confirm_email(self).deliver
      rescue Exception => e
        logger.error("#{e.class.name}: #{e.message}")
        logger.error(e.backtrace * "\n")
      end
    end
  end

end