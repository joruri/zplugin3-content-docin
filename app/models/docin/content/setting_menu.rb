class Docin::Content::SettingMenu < Cms::Content::SettingMenu
  include ActiveHash::Tree
  include ActiveHash::Tree::AddItem

  has_many :fields, class_name: 'Docin::Content::SettingField', foreign_key: :menu_id

  add_item :relation do
    add_item :gp_article_relation
  end
end
