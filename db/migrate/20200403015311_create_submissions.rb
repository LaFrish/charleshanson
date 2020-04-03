class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :user
      t.string :email
      t.string :caption
      t.string :photo
      t.string :video
      t.string :message, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
