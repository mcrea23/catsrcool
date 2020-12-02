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
        input = get_input

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
        #  gets.chomp
        # puts Breed.all 
        # get_input
        end
        breed_details_menu_options
    end

    def breed_details_menu_options
        puts "Select the number next to the breed you want to know more about."
        puts "Or type 'exit' to end progam"
        breed_details_menu
    end

    def print_breed_details(breed)
        # puts "affection type: # {breed.affection}"
        # puts "shedding_level
        # name, :affection, :shedding_level, :origin, :temperament
        
    end

    def breed_details_menu
        input = get_input

        if input.to_i.between?(1, Breed.all.length)
            print_breed_details(input)
            # select_again_or_exit
        else
            invaild_choice
            breed_details_menu_options
        end
    end
end
