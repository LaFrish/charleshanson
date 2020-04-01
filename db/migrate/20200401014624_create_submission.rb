class CreateSubmission < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :caption
      t.string :photo
      t.string :video
      t.string :message
      t.datetime :created_at
      t.datetime :updated_at

      t.references :user, index: true, foreign_key: true
    end
  end
end
