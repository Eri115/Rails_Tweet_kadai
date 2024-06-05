class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :content

      t.timestamps
    end
  end
end


#rails db:migrate コマンドでデータベースを取り扱えるようにテーブル作成する。