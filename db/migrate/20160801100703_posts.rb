class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.string  :body,  null: false
      t.string  :tags
    end
  end
end
