ActiveAdmin.register Message do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :project_id, :title, :description, :admin_user_id, :status
  #
  # or
  #
  permit_params do
    permitted = [:project_id, :title, :description, :admin_user_id, :status]
    permitted << :admin_user_id if params[:action] == 'create' && current_admin_user.present?
    permitted
  end
  
end
