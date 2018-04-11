#
# Inspec test for unzip_fx on windows os
#
# the Inspec refetence, with examples and extensive documentation, can be
# found at https://inspec.io/docker/reference/resources/
#
control "unzip_fx - #{os.name} #{os.release} - 01" do
  title 'Fake test, because unzipping is a windows native functionnality'
  describe powershell('ls') do
      its('exit_status') { should eq 0 }
  end
end
