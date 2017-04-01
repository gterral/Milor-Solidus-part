class CreateReverseProfils < ActiveRecord::Migration
  def change
    create_table :reverse_profils do |t|
      t.integer  "rep1"
      t.integer  "rep2"
      t.integer  "rep3"
      t.integer  "rep4"
      t.integer  "rep5"
      t.integer  "rep6"
      t.integer  "rep7"
      t.integer  "rep8"
      t.integer  "rep9"
      t.integer  "rep10"
      t.integer  "rep11"
      t.integer  "rep12"
      t.integer  "rep13"
      t.integer  "rep14"
      t.integer  "rep15"
      t.integer  "rep16"
      t.integer  "rep17"
      t.integer  "rep18"
      t.integer  "rep19"
      t.integer  "rep20"
      t.integer  "item1"
      t.integer  "item1mark"
      t.integer  "item2"
      t.integer  "item2mark"
      t.integer  "item3"
      t.integer  "item3mark"
      t.integer   "instanciation"
      t.timestamps null: false
    end
  end
end
