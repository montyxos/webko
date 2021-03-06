ActiveAdmin.register UserGroup do
  menu label: 'Benutzer - Gruppe'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params :group_id, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    # column 'Gruppe', :group_id, sortable: :group_id do |group|
    #  div do
    #    Group.find(group).title
    #  end
    # end
    column 'Gruppe', :group_id
    column 'Benutzer', :user_id
    actions
  end
end
