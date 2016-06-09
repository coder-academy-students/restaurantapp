class PagesController < ApplicationController
  def search_results
  end

  def filter_buttons
  end

  def filter_form
  end

  def home
    @restaurants = Restaurant.all
    @features = Feature.all
    @meals = Meal.all
    if params[:meal]
      @meal = Meal.find(params[:meal])
    elsif params[:feature]
      @feature = Feature.find(params[:feature])
    end
    if @meal && @feature
      @restaurants = @meal.restaurants & @feature.restaurants
    elsif @meal
      @restaurants = @meal.restaurants
    elsif @feature
      @restaurants = @feature.restaurants
    else
      @restaurants = Restaurant.all
    end

  end
end
