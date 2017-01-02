class AddRememberDigestToUsers < ActiveRecord::Migration[5.0]
  def change#自动生成
    add_column :users, :remember_digest, :string
  end
end
