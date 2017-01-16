class WelcomeController < ApplicationController
  def index
    @welcome = OperationCheck.all
  end
end
