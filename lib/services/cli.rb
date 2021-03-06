class Cli
    def start 
        puts "Welcome you cat loving nerds!"
        puts "loading.."
        Api.load_data # all info loaded/ models created at this point

        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to list cat breeds"
        puts "Type 'exit' to exit program"

        main_menu
    end

    def main_menu
        input = get_input.downcase

        if input == "1"
            puts "Select breed of cat for more information"
            list_breeds
            breed_details_menu
        elsif input == "exit"
        puts "Exiting, goodbye!"
        exit
        else
            invaild_choice
            main_menu_options
        end
    end

    def invaild_choice
        puts "Invaild Choice. Please try again! :)"
    end

    def get_input
        print "Enter Choice: "
        gets.chomp
    end

    def list_breeds
        Breed.all.each.with_index(1) do |breed, index|
          puts "#{index}. #{breed.name}"
        end

        breed_details_menu_options
    end

    def breed_details_menu_options
        puts "Select the number next to the breed you want to know more about"
        puts "Or type 'exit' to end progam"
        breed_details_menu
    end
    
    def print_breed_details(breed)
        puts ""
        puts "Name: #{breed.name}"
        puts "Affection: #{breed.affection}"
        puts "Shedding Level: #{breed.shedding_level}"
        puts "Origin: #{breed.origin}"
        puts "Temperament: #{breed.temperament}"
        puts ""
    end

    def breed_details_menu
        input = get_input.downcase

        if input.to_i.between?(1, Breed.all.length)
            index = input.to_i - 1
            breed = Breed.all[index]
            print_breed_details(breed)
            main_menu_options
        elsif input == "exit"
            puts "Goodbye all you cool cats and kittens!"
            exit
        else
            invaild_choice
            breed_details_menu_options
        end
    end
end
