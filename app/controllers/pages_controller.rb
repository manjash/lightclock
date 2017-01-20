class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :order_research, :thinker, :read, :get_in_touch ]

  def home
  end

  def order_research
  end

  def thinker
  end

  def get_in_touch
  end

  def read
  end

end
