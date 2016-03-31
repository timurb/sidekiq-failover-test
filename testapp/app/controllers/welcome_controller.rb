class WelcomeController < ApplicationController
  def index
    @dummy = Dummy.new
  end
end
