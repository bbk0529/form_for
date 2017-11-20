class TweetsController < ApplicationController
  #before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy] # To check if a user is logged in. 
  before_action :authenticate_user!, except: [:index, :show] 

  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  def index
    @tweets = Tweet.order(id: :desc).page(params[:page])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end 

  def show

  end

  def edit
  end

  def update
    @tweet.update(
        tweet_params
      )
     redirect_to root_path
    #redirect_to tweet_path(@tweet)
  end

  def destroy
    @tweet.destroy

    redirect_to root_path
  end

private
  def set_tweet
    @tweet = Tweet.find(params[:id]) 
  end 

  def tweet_params
    params.require(:tweet).permit(:title,:content,:user_id, :photo_url)
  end 
end
