users = [
    {username: "x4leqxinn", password: "admin123"},
    {username: "ruanax", password: "admin123"},
    {username: "monaxina", password: "admin123"},
    {username: "admin", password: "admin123"},
    {username: "uwu", password: "admin123"},
]

puts "Welcome to the authenticator"
25.times { print "-" }
puts 
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back user object"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user|
        if user[:username] == username && user[:password] == password
            return user
            
        end
    end
    "Credentials were not correct"
end

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chop.downcase
    # Condicion if en una sola linea
    break if input == 'n'
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4