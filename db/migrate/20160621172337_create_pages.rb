class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :font
      t.string :color
      t.string :title

      t.timestamps null: false
    end
    @page = Page.create(title:'singlepage', color:'#cc66ff', font:'Arial')
  end
end
