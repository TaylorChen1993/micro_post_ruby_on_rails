class CreateUsers < ActiveRecord::Migration[5.0]
  def change#自动生成未修改
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
