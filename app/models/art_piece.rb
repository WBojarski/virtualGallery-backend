class ArtPiece < ApplicationRecord
    require 'rest-client'
    require 'json'
    has_many :art_piece_collections, :dependent => :delete_all
    has_many :collections, through: :art_piece_collections



    def self.fetch_records
        records = []
        id = 1
   
    while id <= 1000
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
             records.each do |record|   ArtPiece.create(title: record["title"], objectID: record["objectID"], isHighlight: record["isHighlight"],
                    primaryImage: record["primaryImage"], primaryImageSmall: record["primaryImageSmall"],
                    department: record["department"], culture: record["culture"], artistDisplayName: record["artistDisplayName"],
                    artistDisplayBio: record["artistDisplayBio"], artistAlphaSort: record["artistAlphaSort"], artistNationality: record["artistNationality"],
                    artistWikidata_URL: record["artistWikidata_URL"], objectBeginDate: record["objectBeginDate"], objectEndDate: record["objectEndDate"],
                medium: record["medium"], dimensions: record["dimensions"], city: record["city"], state: record["state"],
                country: record["country"], classification: record["classification"], repository: record["repository"], objectURL: record["objectURL"])
                code = 0
                print "resps being saved #{code} \n"
                code += 1
             end
            end
        
        
    
end

