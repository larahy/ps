class ArticlesController < ApplicationController

	def new
		@article = Article.new
		3.times {@article.images.build}	
	end

	def create
	    @article = Article.new(article_params)
	    
	    if @article.save 
	      redirect_to articles_path
	    else
	      render 'new'
	    end
	end


	def index
		@articles = Article.all.order('created_at DESC')
	end

	def article_params
  		params.require(:article).permit(:title, :content, images_attributes: [:photo, :id, :article_id])
	end

end
