class StaticPagesController < ApplicationController
  def home
  	@subforums = Subforum.all
  end

  def help
  end
end
