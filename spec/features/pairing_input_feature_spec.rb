require 'rails_helper'

feature 'pairing input for the day' do
  scenario 'there are two dropdown menus' do
    visit pairs_path
    expect(page).to have_select('studentOne')
    expect(page).to have_select('studentTwo')
  end

  scenario 'the LEFT dropdown menu  contains all the students' do
    visit pairs_path
    expect(page).to have_select('studentOne', options: ['Chris', 'Diego', 'Tommy', 'Pablo'])
  end

  scenario 'the RIGHT dropdown menu contains remaining students' do
    visit pairs_path
    select "Chris", from: 'studentOne'
    expect(page).to have_select('studentTwo', options: ['Diego', 'Tommy', 'Pablo'])
  end

  context 'recording the pair input' do
    scenario 'the pairing result is displayed' do

    end
  end
end