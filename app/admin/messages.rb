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

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :project_id, as: :select, collection: Project.all.map { |p| [p.name, p.id] }, include_blank: false
      f.input :admin_user_id, as: :select, collection: AdminUser.all.map { |a| [a.email, a.id] }, include_blank: false
      f.input :status, as: :select, collection: ['unread', 'read', 'archived'], include_blank: false
    end
    f.actions
  end
  
end
