require 'rails_helper'

RSpec.describe "Animals", type: :request do
 
  it 'CREATE animals' do
      post "/animals", :params => {"animal": {
        "common_name": "liosn",
    
        "sightings_attributes": [{
            "animal_id": 10,
            "latitude": 46.68449,
            "longitude": -122.05094,
            "date": "2022-12-01"
        }]
    }}
      expect(response).to have_http_status(422)
    
  end
end
