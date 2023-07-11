module Rails
  module ConsoleMethods
    def self.included(_base)
      print 'Enter your Admin email: '

      email = STDIN.gets.chomp
      user = User.find_by(email: email.strip)

      unless user.admin?
        puts 'Admin not found! Exiting...'
        exit
      end

      print 'Enter your password: '
      pass = IO::console.getpass

      if user.valid_password?(pass.strip)
        puts "\nWelcome, #{user.email}!"
      else
        puts 'Password is incorrect! Exiting...'
        exit
      end
    end
  end
end
