class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t| # creates a table in a database agnostic manner
      t.string :title # creates a title column
      t.text :body # creates a body column

      t.timestamps # automatically adds a timestamp to each row!
    end
  end
end

# Migrate your db like so
# in your CL, run this command:
# bin/rails db:migrate
# 
# Try making an entry on a database using 'bin/rails console'
# then enter:
# article = Article.new(title: "Hello Rails", body: "I am on Rails!")
# although this will not save, you will have made an instance of a new article.
# now try this: 'article.save'. Checkout the SQL commands from that. You've now saved your instance to the table!
# 
# now type in: 'Article.all'
# You will see your article object has been saved and is now displayed as part of the Article class
# 
# Make an entirely different object of Article, cal it something like 'douche = Article.new(title: "I am a douche", body: "It is true, I am a douche!")
# then again: douche.save
# You've saved douche as a new Article object. Great! But wanna see something weird?
# type in: 'Article.all' again!
# 
# It is saved into THE SAME DATABASE AS BEFORE!
# 
# This method returns an ActiveRecord::Relation object which you can think of as a super-powered Array
# 
# 
# 
# 
# 
# 

