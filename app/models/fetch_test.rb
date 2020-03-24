require 'rest-client'
require 'json'




def fetch_records
    records = []
    id = 1
    url = "https://collectionapi.metmuseum.org/public/collection/v1/objects/#{id}"

    while id <= 100
        
        resp = RestClient.get(url)
        
       records << JSON.parse(resp)
       id += 1 
    end
    return records
end

fetchAll = fetch_records
fetch_records.each  do |record| 
    ArtPiece.create(title: record.title, objectID: record.objectID, isHighlight: record.isHighlight,
         primaryImage: record.primaryImage, primaryImageSmall: record.primaryImageSmall,
        department: record.department, culture: record.culture, artistDisplayName: record.artistDisplayName,
         artistDisplayBio: record.artistDisplayBio, artistAlphaSort: record.artistAlphaSort, artistNationality: record.artistNationality,
        artistWikidata_URL: record.artistWikidata_URL, objectBeginDate: record.objectBeginDate, objectEndDate: record.objectEndDate,
    medium: record.medium, dimensions: record.dimensions, city: record.city, state: record.state,
     country: record.coutry, classification: record.classification, repository: record.repository, objectURL: record.objectURL)
end




