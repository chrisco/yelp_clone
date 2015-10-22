require 'rails_helper'


feature 'user can sign in and out' do

  before do
    visit ('/')
  end

  context 'user not signed in and on the homepage' do

    it 'should see a sign in link and a sign up link' do
      expect(page).to have_link 'Sign in'
      expect(page).to have_link 'Sign up'
    end

    it 'should not see a sign out link' do
      expect(page).not_to have_link 'Sign out'
    end
  end

  xcontext 'user not signed in and clicks on sign up link' do
    it 'should see a sign up form' do
      expect(page).to have_selector
    end

  end
end
