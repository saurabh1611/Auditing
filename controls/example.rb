# copyright: 2018, The Authors

title "Inspec Profile to check for Packages"

# you add controls here
control "Apache-1.0" do
  impact 0.7
  title "Check if Apache is installed"
  desc "Checking on Linux System, Check for httpd Package."

  describe package('httpd') do
    it { should be_installed }
  end

  describe service('httpd') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

end
