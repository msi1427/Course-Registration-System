class ResController < ApplicationController
  before_action :authenticate_user!
  def index
    @res = Result.order(:semester)
  end

  def first
    @res = Result.order(:course_name)
  end

  def second
    @res = Result.order(:course_name)
  end

  def third
    @res = Result.order(:course_name)
  end

  def fourth
    @res = Result.order(:course_name)
  end

  def fifth
    @res = Result.order(:course_name)
  end

  def sixth
    @res = Result.order(:course_name)
  end

  def seventh
    @res = Result.order(:course_name)
  end

  def eighth
    @res = Result.order(:course_name)
  end

  private

end
