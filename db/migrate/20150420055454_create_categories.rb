require 'progress_bar'

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug
      t.string :ancestry

      t.timestamps
    end

    add_index :categories, :ancestry

    yml = YAML.load_file(Rails.root.join('config/categories.yml'))
    bar = ProgressBar.new(yml.count)
    yml.each do |key,value|
      bar.increment!

      Category.create(:title => key)
      value.each do |k,v|
        root_category = Category.find_by_title(key)
        root_category.children.create(:title => k)
      end
    end
  end
end
