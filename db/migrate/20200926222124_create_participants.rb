class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :name, :null => false
      t.string :email
      t.string :phone_no

      t.timestamps
    end
  end
end
