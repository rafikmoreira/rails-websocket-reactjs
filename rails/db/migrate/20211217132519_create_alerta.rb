class CreateAlerta < ActiveRecord::Migration[6.1]
  def change
    create_table :alerta do |t|
      t.string :titulo
      t.string :tipo

      t.timestamps
    end
  end
end
