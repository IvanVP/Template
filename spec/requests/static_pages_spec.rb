require 'spec_helper'

describe "StaticPages" do

  subject {page}

  #let(:base_title) { "MyTemplate" }

  describe "Home page" do
    before {visit root_path}

    it { should have_content( 'Welcome to the Template') }
    it { should have_selector( 'h1', text: 'Welcome to the Template') }
    it  { should_not have_selector('title', text: "| Home") }
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title',
                                :text => "| Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title',
                                :text => "| About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title',
                                :text => "| Contact")
    end
  end
end
