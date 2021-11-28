class Article < ApplicationRecord
  has_rich_text:content
  belongs_to :user #campo adicional
  has_many :has_categories
  has_many :categories, through: :has_categories
  attr_accessor :category_elements

def save_categories
  # category_elements 1,2,3
  # Convertir eso en un arregle 1,2,3 => [1,2,3]
  #=====> categories_array = category_elements.split(",") <=====
  #Iterar ese arreglo
  return has_categories.destroy_all if category_elements.nil? || category_elements.empty?
  category_elements.each do |category_id|

    #Unless es la inverso del if => "A menos que"
    #unless HasCategory where(article:self, category_id:category_id).any?
    #Si da verdadero no se crea


      HasCategory.find_or_create_by(article: self, category_id: category_id)
  #find_or_create para evitar duplicados
  end
end


end
