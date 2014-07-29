require './lib/parcels.rb'

@list = []

def ship_menu
  loop do
    puts "press 'a' to enter your packages dimensions."
    puts "press 'l' list your packages."
    puts "press 'x' to exit."
    ship_choice = gets.chomp
    if ship_choice == 'a'
      add_packages
    elsif ship_choice == 'l'
      list_packages
    elsif ship_choice == 'x'
      puts "Good-bye."
      exit
    else
      puts "Choose again."
    end
  end
end


def add_packages
  puts "enter length"
 length = gets.chomp.to_i
 puts "enter width"
 width = gets.chomp.to_i
 puts "enter height"
 height = gets.chomp.to_i
 puts "package weight?"
 weight = gets.chomp.to_i
 @list << Parcel.new(length,width,height,weight)
end

def list_packages
  puts "Heres a list of your packages:"
  @list.each do |package|
    puts package.length.to_s + ", " + package.width.to_s + ", " +
    package.height.to_s + " costs: $" + package.cost_to_ship.to_s
  end
end

ship_menu
