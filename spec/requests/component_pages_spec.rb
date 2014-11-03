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

  describe "gpu page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/gpu'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'GPU'" do
      visit '/component_pages/gpu'
      page.should have_selector('title',
                        :text => "Computer | GPU")
    end
  end

  describe "powerSupply page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/power'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'PowerSupply'" do
      visit '/component_pages/power'
      page.should have_selector('title',
                        :text => "Computer | PowerSupply")
    end
  end

   describe "hd page" do
     it "should have the h1 'Comp App'" do
      visit '/component_pages/hd'
      page.should have_selector('h1', :text => 'Comp App')
    end

    it "should have the title 'HD'" do
      visit '/component_pages/hd'
      page.should have_selector('title',
                        :text => "Computer | HD")
    end
  end


end