json.extract! agency, :id, :name, :description, :phone, :city, :state, :zipcode, :website, :created_at, :updated_at
json.url agency_url(agency, format: :json)