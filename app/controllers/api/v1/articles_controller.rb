module Api::V1
  class ArticlesController < ApiController

    # GET /users
    def index
      # articles = Article.preload(:user)
      articles = Article.with_users
      # render json: Article.all
      
      # This will return the articles, and the associated user as json.
      # render :json => articles.to_json(:include => :user)
      render json: articles
    end
  end
end
