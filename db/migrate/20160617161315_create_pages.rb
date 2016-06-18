class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :color
      t.string :font

      t.timestamps null: false
    end
    @page = Page.create(title:'singlepage', color:'#cc66ff', font:'Arial')
  end
end
