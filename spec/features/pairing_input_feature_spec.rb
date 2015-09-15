require 'rails_helper'

feature 'pairing input for the day' do
  scenario 'there are two dropdown menus' do
    visit pairs_path
    expect(page).to have_selector('select')
  end
  #
  # scenario 'the dropdown menus contain all the students' do
  #   visit pairs_path
  #   expect(page).to have_selector(:studentOne, options: ['Chris', 'Diego', 'Tommy', 'Pablo'])
  #   expect(page).to have_selector(:studentTwo, options: ['Chris', 'Diego', 'Tommy', 'Pablo'])
  #
  # end

  # scenario 'the RIGHT dropdown menu contains remaining students' do
  #   visit pairs_path
  #   select "Chris", from: 'studentOne'
  #   expect(page).to have_select('studentTwo', options: ['Diego', 'Tommy', 'Pablo'])
  # end

  scenario "there is a submit button" do
    visit pairs_path
    expect(page).to have_selector('input')
  end

end
