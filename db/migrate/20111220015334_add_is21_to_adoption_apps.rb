class AddIs21ToAdoptionApps < ActiveRecord::Migration
  def change
    add_column :adoption_apps, :is_ofage, :boolean
  end
end
