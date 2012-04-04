Spree::Admin::OptionTypesController.class_eval do
  
  def update
    invoke_callbacks(:update, :before)
    if @object.update_attributes(params[object_name])
      params[object_name][:option_values_attributes].each do |key, opa|
        opaid = opa[:id] || key
        if opa["_destroy"] == "false"
          opa.delete("_destroy")
          ov = Spree::OptionValue.find_or_create_by_id_and_option_type_id(opaid, @object.id)
          ov.update_attributes(opa)
        else
          Spree::OptionValue.find(opaid).destroy
        end
      end
      invoke_callbacks(:update, :after)
      flash.notice = flash_message_for(@object, :successfully_updated)
      respond_with(@object) do |format|
        format.html { redirect_to location_after_save }
        format.js   { render :layout => false }
      end
    else
      invoke_callbacks(:update, :fails)
      respond_with(@object, :location => [:admin, @object])
    end
  end
  
end