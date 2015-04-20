require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'checks categories.yml file' do
    file = File.exist?(Rails.root.join('config/categories.yml'))

    expect(file).to eq(true)
  end

  it 'shoud be a valid yml file' do
    yml = begin
            !!YAML.load_file(Rails.root.join('config/categories.yml'))
          rescue
          end

    expect(yml).to eq(true)
  end
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  ancestry   :string(255)
#  created_at :datetime
#  updated_at :datetime
#
