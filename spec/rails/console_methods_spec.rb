require 'rails_helper'

RSpec.describe Rails::ConsoleMethods do
  describe ".included" do
    let(:user) { create(:user, admin: true) }

    before do
      allow(User).to receive(:find_by).and_return(user)
      allow(STDIN).to receive(:gets).and_return("#{user.email}\n")
      allow(IO::console).to receive(:getpass).and_return("password\n")
    end

    it "logs in an admin user with correct email and password" do
      expect { described_class.included(nil) }.to output(/Welcome, #{user.email}!/).to_stdout
    end

    it "exits when admin is not found" do
      allow(user).to receive(:admin?).and_return(false)

      expect { described_class.included(nil) }.to output(/Admin not found! Exiting.../).to_stdout
      expect { exit }.to raise_error(SystemExit)
    end

    it "exits when password is incorrect" do
      allow(user).to receive(:valid_password?).and_return(false)

      expect { described_class.included(nil) }.to output(/Password is incorrect! Exiting.../).to_stdout
      expect { exit }.to raise_error(SystemExit)
    end
  end
end
