class CreateDataErrors < ActiveRecord::Migration
  def change
    create_table :data_errors do |t|
      t.references :errorable, polymorphic: true

      t.timestamps
    end
  end
end
