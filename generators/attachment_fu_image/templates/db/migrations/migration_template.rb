class Create<%= class_name -%>Image < ActiveRecord::Migration
  def self.up
    create_table :<%= file_name %>_images do |t|
      t.integer :<%=file_name -%>_id
      t.string :filename
      t.string :content_type
      t.integer :size
      t.integer :width
      t.integer :height
      t.integer :parent_id
      t.string :thumbnail

      t.timestamps
    end
  end

  def self.down
    drop_table :<%= file_name() -%>_images
  end
end
