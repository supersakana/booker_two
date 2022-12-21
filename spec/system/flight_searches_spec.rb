require 'rails_helper'

RSpec.describe 'FlightSearches', type: :system do
  before do
    driven_by(:rack_test)
  end

  let!(:atlanta) { create(:airport, :atlanta) }
  let!(:norfolk) { create(:airport, :norfolk) }

  let!(:flight) { create(:flight, :atl_orf, from: atlanta, to: norfolk) }

  scenario 'avalible flights' do
    visit '/'
    select('ATL, Atlanta, Georgia', from: 'from_id')
    select('ORF, Norfolk, Virginia', from: 'to_id')
    select('2', from: 'passenger_count')
    select(Date.tomorrow, from: 'date')
    click_on 'Search'
    formatted_date = Date.tomorrow.strftime('%B %d %Y')

    expect(page).to have_content("#{formatted_date} | ATL - ORF")
    expect(page).to have_content('08:00 AM')
  end

  scenario 'departure and arrival airport are the same' do
    visit '/'
    select('ORF, Norfolk, Virginia', from: 'from_id')
    select('ORF, Norfolk, Virginia', from: 'to_id')
    select('2', from: 'passenger_count')
    select(Date.tomorrow, from: 'date')
    click_on 'Search'

    expect(page).to have_content('Search for flight...')
    expect(page).to have_content('departure and arrival flights should be different')
  end
end
