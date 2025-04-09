ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :status
  #
  # or
  #
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :status, as: :select, collection: Project.statuses.keys, include_blank: false, selected: f.object.status
    end
    f.actions
  end
  
end
