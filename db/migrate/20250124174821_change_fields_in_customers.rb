class ChangeFieldsInCustomers < ActiveRecord::Migration[8.0]
  def change
    remove_column :customers, :age
    remove_column :customers, :gender

    add_column :customers, :email, :string
    add_column :customers, :phone, :string
  end
end
