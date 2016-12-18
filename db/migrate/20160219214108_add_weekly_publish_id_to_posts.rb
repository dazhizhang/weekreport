class AddWeeklyPublishIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :weekly_publish_id, :integer,  after: :category_id, index:true
  end
end
