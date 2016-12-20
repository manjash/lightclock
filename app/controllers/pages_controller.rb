class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :team, :work ]

  def home
  end

  def team
  end

  def work
  end

end
