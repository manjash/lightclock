class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :team, :how_it_works, :get_in_touch ]

  def home
  end

  def team
  end

  def how_it_works
  end

  def get_in_touch
  end

end
