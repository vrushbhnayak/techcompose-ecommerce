class AlluserlistsController < ApplicationController
  def index
    @userlist = Userdevise.all
  end
end
