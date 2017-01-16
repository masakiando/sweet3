class CreateOperationChecks < ActiveRecord::Migration
  def change
    create_table :operation_checks do |t|
      t.string :serial_number, null: false            # 生産番号
      t.string :serial_number_for_index, null: false  # 索引用生産番号
      t.string :product_number                        # 製造番号
      t.date :purchase_date                             # 購入日

      t.string :repair_number                        # 修理番号
      t.boolean :suspended, null: false, default: false # 停止フラグ
      t.string :station, null: false                # 現在場所
      t.binary :data                                # 画像
      t.timestamps null: false
    end
  end
end
