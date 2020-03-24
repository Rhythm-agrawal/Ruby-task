users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
# program execution flow
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

def authenticate(username, password ,list_of_users)
  list_of_users.each do |record|
    if record[:username] == username && record[:password] == password
      return record
    end
  end
  "Credentials not correct"
end
attempts = 1
while attempts < 4
puts "Username:"
username = gets.chomp
puts "Password:"
password = gets.chomp
valid = authenticate(username, password, users)
puts valid
puts "Press n to quit or any other key to continue"
keypressed = gets.chomp.downcase
break if keypressed == "n" 
attempts += 1
end