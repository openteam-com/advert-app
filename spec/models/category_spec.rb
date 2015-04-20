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
