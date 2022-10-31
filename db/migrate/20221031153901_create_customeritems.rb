class CreateCustomeritems < ActiveRecord::Migration[5.2]
  def change
    create_table(:customeritems) do |t|
      t.references(:item,       foreign_key: true)
      t.references(:customer,       foreign_key: true)
    end
  end
end
