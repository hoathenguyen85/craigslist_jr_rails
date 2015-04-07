class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :contact_info
      t.references :category

      t.timestamps
    end
  end
end
