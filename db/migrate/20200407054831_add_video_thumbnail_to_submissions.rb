class AddVideoThumbnailToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :thumbnail, :string
    remove_column :submissions, :photo, :string
  end
end
