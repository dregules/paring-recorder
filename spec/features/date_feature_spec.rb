require 'rails_helper'

feature 'date' do

  before do
    Timecop.freeze(Time.local(2015, 9, 15, 10, 32, 0))
  end

    scenario 'should display the date' do
      visit pairs_path
      expect(page).to have_content 'Tuesday Week 3'
    end
end
