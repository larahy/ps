class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
	    @article = Article.new params[:article].permit(:title, :content)

	    if @article.save 
	      redirect_to articles_path
	    else
	      render 'new'
	    end
	end


	def index
		@articles = Article.all.order('created_at DESC')
	end

end
