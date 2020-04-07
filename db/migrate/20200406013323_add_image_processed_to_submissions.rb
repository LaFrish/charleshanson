class AddImageProcessedToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :image_processed, :boolean
  end
end
