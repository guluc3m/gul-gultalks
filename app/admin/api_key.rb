ActiveAdmin.register ApiKey do
  permit_params :token, :description

  menu :label => proc{ t("ApiKeys") }

  index do
    selectable_column
    column :token
    column :description
    actions
  end

  filter :token
  filter :description

  form do |f|
    f.inputs "Info" do
      f.input :description, label: t("api_key.description")
    end
    f.actions
  end
end

