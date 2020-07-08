class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :vote]

  def index
    @cocktails = Cocktail.all.order(voting: :desc)
    @search = params['search']
    if @search.present?
      @name = @search['query']
      redirect_to search_cocktails_path(name: @name)
    else
      @cocktails = Cocktail.all.order(voting: :desc)
    end
    @cocktails.each do |cocktail|
      cocktail.clicked = 0
      cocktail.save
    end
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
    @recommendation = recommendation
  end

  def create
    @cocktail = Cocktail.new(cock_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to new_cocktail_path
      flash.alert = 'Sorry I just upset your cups of cocktail! Please input the "Name" again!'
    end
  end

  def random_cocktail
    redirect_to cocktail_path(Cocktail.all.sample.id)
  end

  def search_cocktails
    @name = params[:name]
    @cocktails = Cocktail.where("name ILIKE ?", "%#{@name}%")
  end

  def vote
    if @cocktail.clicked == 0
      @cocktail.voting += 1
      @cocktail.clicked += 1
      @cocktail.save
    else
      @cocktail.voting -= 1
      @cocktail.clicked -= 1
      @cocktail.save
    end
  end

  def recommendation
    require 'json'
    require 'open-uri'

    url = 'https://www.thecocktaildb.com/api/json/v1/1/random.php'
    drinks = open(url).read
    cocktails = JSON.parse(drinks)
    name = cocktails['drinks'][0]['strDrink']
    url =  cocktails['drinks'][0]['strDrinkThumb']
    Cocktail.new(name: name, image_url: url)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cock_params
    params.require(:cocktail).permit(:name, :image_url, :voting, :photo)
  end
end
