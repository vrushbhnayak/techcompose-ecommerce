class UserListsController < ApplicationController
  def index
    @userlist = Userdevise.all
  end
end
