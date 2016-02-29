class CreateWeeklyPublishes < ActiveRecord::Migration
  def change
    create_table :weekly_publishes do |t|
      t.string :name, null: false
      t.date :publish_date

      t.timestamps null: false
    end
  end
end
