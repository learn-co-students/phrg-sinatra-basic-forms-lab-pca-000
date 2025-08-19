require 'rails_helper'

RSpec.describe 'Rails Forms Lab', type: :feature do
  describe 'GET /' do
    it 'sends a 200 status code' do
      visit '/'
      expect(page.status_code).to eq(200)
    end

    it 'renders welcome' do
      visit '/'
      expect(page).to have_link('Click Here To List A Puppy')
    end
  end

  describe 'GET /new' do
    it 'sends a 200 status code' do
      visit '/new'
      expect(page.status_code).to eq(200)
    end

    it 'renders the form' do
      visit '/new'
      expect(page).to have_selector('form')
      expect(page).to have_field(:name)
      expect(page).to have_field(:breed)
      expect(page).to have_field(:age)
    end
  end

  describe 'POST /puppy' do
    it 'displays the puppy' do
      visit '/new'

      fill_in(:name, with: 'Butch')
      fill_in(:breed, with: 'Mastiff')
      fill_in(:age, with: '6 months')
      click_button 'submit'

      # Check that the page contains the puppy information
      expect(page).to have_text('Puppy Name')
      expect(page).to have_text('Butch')
      expect(page).to have_text('Puppy Breed')
      expect(page).to have_text('Mastiff')
      expect(page).to have_text('Puppy Age')
      expect(page).to have_text('6 months')
    end
  end
end
