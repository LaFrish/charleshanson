class AddImageUrlToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :remote_image_url, :string
  end
end
