require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Signup') }
    it { should have_selector('title', :text => "| Signup") }
  end
end
