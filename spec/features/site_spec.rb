require 'spec_helper'

describe "Site pages" do

  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'tiny-dribbble')}
  end

  describe "About page" do
    before { visit about_path }
    it { should have_text('About')}
  end

  describe "FAQ page" do
    before { visit faq_path }
    it { should have_text('FAQ')}
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_text('Contact')}
  end

end
