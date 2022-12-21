require 'rails_helper'

RSpec.describe Flight, type: :model do
  let!(:atlanta) { create(:airport, :atlanta) }
  let!(:norfolk) { create(:airport, :norfolk) }

  let!(:flight) { create(:flight, :atl_orf, from: atlanta, to: norfolk) }
end
