class ExampleController < ApplicationController
  # imagine our gem implemented a class macro
  # in rails that would scan this controller's
  # routes and added them to routes that
  # our middleware would run before
  # internal_api!

  def new
    # do stuff
  end

  def show
    # do stuff
  end
end
