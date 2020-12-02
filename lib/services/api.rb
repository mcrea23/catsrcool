class Api

    def self.base_url
        "https://api.thecatapi.com/v1/breeds"
    end

    def self.load_data
       
        response = RestClient.get(base_url)
        data = JSON.parse(response.body)
        data.each do |breed_data|
            Breed.new(breed_data)
        end
    end
end