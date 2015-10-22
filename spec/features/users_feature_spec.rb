require 'rails_helper'
require 'pry'

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

  context 'user not signed in and clicks on sign up link' do

    it 'should see a sign up form' do
      click_on('Sign up')
      expect(page).to have_field('user_password')
      expect(page).to have_field('user_email')
    end
  end

  context 'user can sign up' do

    before do
      click_on('Sign up')
      fill_in('Email', with: 'bo@cint.com')
      fill_in('Password', with: 'password')
      fill_in('Password confirmation', with: 'password')
      click_button('Sign up')
    end

    it "it should show a sign out link" do
      expect(page).to have_link('Sign out')
    end

    it "should not see a 'sign in' or 'sign up' link" do
      expect(page).to_not have_link('Sign in')
      expect(page).to_not have_link('Sign up')
    end
  end
end
