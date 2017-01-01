class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :team, :how_it_works ]

  def home
  end

  def team
  end

  def how_it_works
  end

end
