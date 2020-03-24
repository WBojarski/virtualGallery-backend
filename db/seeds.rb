# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'


    records = []
    id = 5066   
   
    while id <= 5400
        url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{id}"
        puts url
        begin
        resp = RestClient::Request.execute(method: :get, url: url)
        art_piece = JSON.parse(resp)
            rescue RestClient::Exception
                puts "error"
            end
        records << art_piece
        id += 1
     
    end
    



art_pieces = records.each do |record| 
    ArtPiece.create(title: record["title"], objectID: record["objectID"], isHighlight:record["isHighlight"],
         primaryImage: record["primaryImage"], primaryImageSmall: record["primaryImageSmall"],
        department: record["department"], culture: record["culture"], artistDisplayName: record["artistDisplayName"],
         artistDisplayBio: record["artistDisplayBio"], artistAlphaSort: record["artistAphaSort"], artistNationality: record["artistNationality"],
        artistWikidata_URL: record["artistWikidata_URL"], objectBeginDate: record["objectBeginDate"], objectEndDate: record["objectEndDate"],
    medium: record["medium"], dimensions: record["dimensions"], city: record["city"], state: record["state"],
     country: record["country"], classification: record["classification"], repository: record["repository"], objectURL: record["objectURL"])
end