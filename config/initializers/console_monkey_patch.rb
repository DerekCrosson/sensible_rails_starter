module Rails
  module ConsoleMethods
    def self.included(_base)
      print "Enter your Admin email: "
      user = User.find_by(email: $stdin.gets.chomp.strip)
      handle_non_admin_user(user)
      print "Enter your password: "
      handle_auth(user, IO.console.getpass)
    end

    def handle_non_admin_user(user)
      unless user.admin?
        puts "Admin not found! Exiting..."
        exit
      end
    end

    def handle_auth(user, pass)
      if user.valid_password?(pass.strip)
        Audited.store[:audited_user] = user
        puts "\nWelcome, #{user.email}!"
      else
        puts "Password is incorrect! Exiting..."
        exit
      end
    end
  end
end
