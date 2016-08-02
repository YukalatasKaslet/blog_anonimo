class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.string  :body,  null: false
      t.string  :tags
    end

    create_table :tags do |t|
      t.string  :tags
    end

    create_table :posts_tags do |t|
      t.belongs_to :post, index: true
      t.string  :tags,     index: true
    end

  end
end


=begin
  
class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :patients do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :appointments do |t|
      t.belongs_to :physician, index: true
      t.belongs_to :patient, index: true
      t.datetime :appointment_date
      t.timestamps
    end
  end
end

=end