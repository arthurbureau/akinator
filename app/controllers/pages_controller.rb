class PagesController < ApplicationController
  
  def home
  end

  def blog
article1 = {
	"title" => "Mon 1er article",
	"content" => "salut salut salut salut",
} 

article2 = {
	"title" => "Mon 2ème article",
	"content" => "cou cou cou cou couc ot",
}

article3 = {
	"title" => "Mon 3ème article",
	"content" => "hola hola hola ",
}

@articles = [article1, article2, article3]
  end

end
