class StoreController < ApplicationController
  def index
    @course = Course.order(:number)
  end
end
