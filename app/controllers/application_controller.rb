class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/bands" do
    bands = Band.all 
    bands.to_json(include: :shows)
  end

  post "/bands" do
    band = Band.create(
      name: params[:name],
      description: params[:description],
      genre: params[:genre]
    )

    band.to_json(include: :shows)
  end

  delete "/bands/:id" do 
    band = Band.find(params[:id])

    band.destroy
    band.to_json
  end

  get "/bands/:id" do
    band = Band.find(params[:id])

    band.to_json(include: :shows)
  end

  get "/shows" do 
    shows = Show.all

    shows.to_json
  end

  patch "/bands/:id" do
    band = Band.find(params[:id])

    band.update(
      description: params[:description]
    )

    band.to_json(include: :shows)
  end

  post "/bands/:id/shows" do
    shows = Show.create(
      location: params[:location],
      description: params[:description],
      show_date: params[:show_date],
      band_id: params[:band_id]
    )
    shows.to_json
  end

end
