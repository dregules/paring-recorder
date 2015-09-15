require 'rails_helper'

feature 'date' do

  before do
    Timecop.freeze(Time.local(1990))
  end

    scenario 'should display the date' do
      visit '/pairs'
      expect(page).to have_content 'Tuesday'
    end
end
