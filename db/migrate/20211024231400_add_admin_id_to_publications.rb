class AddAdminIdToPublications < ActiveRecord::Migration[6.1]
  def change
    add_reference :publications, :admin, null: false, foreign_key: true, default: 2
  end
end
