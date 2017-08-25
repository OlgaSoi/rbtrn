class AddApiKeyToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :api_key, :string, :null => false, :default => "1234567890123456"
  end
end
