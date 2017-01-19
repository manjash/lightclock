class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :order_research, :how_it_works, :get_in_touch ]

  def home
  end

  def order_research
  end

  def how_it_works
  end

  def get_in_touch
  end

end
