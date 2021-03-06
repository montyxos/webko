ActiveAdmin.register User do
  menu label: 'Benutzer'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :email,
                :encrypted_password,
                :first_name,
                :last_name,
                :username,
                :password,
                :password_confirmation

  index do
    column 'Benutzername', :username
    column 'Vorname', :first_name
    column 'Nachname', :last_name
    column :email
    column 'Password', :encrypted_password
    column 'Anzahl der Anmeldungen', :sign_in_count
    column 'Momentan eingelogt um', :current_sign_in_at
    column 'Zuletzt eingelogt am', :last_sign_in_at
    actions
  end

  # Die edit formulare bearbeiten

  form do |f|
    f.inputs 'Benutzer erstellen' do
      f.inputs :username
      f.inputs :first_name
      f.inputs :last_name
      f.inputs :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
