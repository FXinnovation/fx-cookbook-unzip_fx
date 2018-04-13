#
# Inspec test for unzip_fx on linux
#
# the Inspec refetence, with examples and extensive documentation, can be
# found at https://inspec.io/docker/reference/resources/
#
control "unzip_fx - #{os.name} #{os.release} - 01" do
  title 'Ensure required packages are installed'
  describe package('unzip') do
    it { should be_installed }
  end
end
