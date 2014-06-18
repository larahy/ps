require 'spec_helper'

describe 'creating and editing articles' do 

  context 'creating' do 

    it 'should display the title and truncated article' do 
      visit '/articles/new'
      fill_in 'Title', with: 'Double Denim'
      fill_in 'Content', with: 'donkeys can be very cool'
      click_button 'Save'
      expect(current_path).to eq '/articles'
      expect(page).to have_content 'donkeys can be very cool'
    end

  end

end