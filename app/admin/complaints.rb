ActiveAdmin.register Complaint do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :company_id, :detail
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :company_id, :detail]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id 
    column :user_id do |user|
        user.user.email
      end
    column :company_id do |company|
        company.company.name
    end
    column :detail
    actions
  end

  form do |f|
    input :user_id
    input :company_id
    input :detail
    actions
  end
end
