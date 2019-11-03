class HomeController < ApplicationController
  def show
    render layout: get_layout
  end

  def info
    render layout: "cover"
  end
end
