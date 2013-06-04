class SiteController < ApplicationController
  def home
    if user_signed_in?
      @shots = current_user.shots
    else
      @shots = Shot.all
    end

  end

  def about
  end

  def faq
  end

  def contact
  end
end
