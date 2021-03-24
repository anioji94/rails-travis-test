class ArticlesController < ApplicationController
  def index
		# to start with, nothing is kept here
		# I'm going to add some functionality that will allow the Articles to be visible in the app
		# This controller will send our array to Views:

		@articles = Article.all # our Super Array (ActiveRecord::Relation)

		# Now I need to go into views, index.html.erb , to display everything
	end
			
	## SHOW ACTIONS
	# This allows for single articles to be viewed as individual pages via /articles/:id
		def show
			@article = Article.find(params[:id])
 		end

	## POST ACTIONS
	def new
		@article = Article.new
	end
	# The 'new' action instantiates a new article but does not save it

	def create_table
		@article = Article.new(title: "...", body: "...")

		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

private

	def
	end
end
