class CreateProfils < ActiveRecord::Migration


  def change
    create_table :profils do |t|
      t.integer 'dim1'
      t.integer 'dim2'
      t.integer 'dim3'
      t.integer 'dim4'
      t.integer 'dim5'
      t.integer 'dim6'
      t.integer 'dim7'
      t.integer 'dim8'
      t.integer 'dim9'
      t.integer 'dim10'
      t.integer 'dim11'
      t.integer 'dim12'
      t.integer 'dim13'
      t.integer 'dim14'
      t.integer 'dim15'
      t.timestamps null: false
    end
  end

end
