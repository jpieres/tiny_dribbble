require 'spec_helper'

describe "Site pages" do

  describe "Home page" do

    it "should have the content 'tiny-dribbble'" do
      visit '/site/home'
      page.should have_content('tiny-dribbble')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/site/about'
      page.should have_content('About')
    end
  end

  describe "FAQ page" do

    it "should have the content 'FAQ'" do
      visit '/site/faq'
      page.should have_content('FAQ')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/site/contact'
      page.should have_content('Contact')
    end
  end

end
