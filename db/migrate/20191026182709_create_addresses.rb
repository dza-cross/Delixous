class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :rua
      t.string :bairro
      t.string :cep
      t.text :observacoes 

      t.timestamps
    end
  end
end
