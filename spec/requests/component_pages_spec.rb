require 'spec_helper'

describe "Component pages" do

  describe "motherboard page" do

     it "should have the h1 'Comp App'" do
      visit '/component_pages/motherboard'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'Motherboard'" do
      visit '/component_pages/motherboard'
      page.should have_selector('title',
                        :text => "Computer | Motherboard")
    end
  end

  describe "cpu page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/cpu'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'CPU'" do
      visit '/component_pages/cpu'
      page.should have_selector('title',
                        :text => "Computer | CPU")
    end
  end

   describe "rvm page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/rvm'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'RVM'" do
      visit '/component_pages/rvm'
      page.should have_selector('title',
                        :text => "Computer | RVM")
    end
  end

   describe "hardware page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/hardware'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'Hardware'" do
      visit '/component_pages/hardware'
      page.should have_selector('title',
                        :text => "Computer | Hardware")
    end
  end


end