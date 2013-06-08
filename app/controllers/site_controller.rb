class SiteController < ApplicationController
  def home
    if user_signed_in?
      @shots = current_user.shots
      @header_title = "My shots"
    else
      @shots = Shot.all
      @header_title = "All users shots"
    end

  end

  def about
  end

  def faq
  end

  def contact
  end
end
