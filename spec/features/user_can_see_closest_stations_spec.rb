require 'rails_helper'

feature 'NREL stations' do
  scenario 'user can see 10 closest stations' do
    visit '/search'

    expect(current_path).to eq('/search')
    expect(page).to have_css(".stations", count: 10)

    within(first(.station)) do
      expect(page).to have_css(.name)
      expect(page).to have_css(.address)
      expect(page).to have_css(.fuel_type)
      expect(page).to have_css(.distance)
      expect(page).to have_css(.access_times)
    end
  end
end
