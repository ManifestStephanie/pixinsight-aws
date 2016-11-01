# pixinsight-aws

TODO: Enter the cookbook description here.



# Setup instructions
On your mac/linux box

1. Install chef-dk

1. Use chef-dk ruby.
export PATH=/opt/chefdk/embedded/bin:$PATH

1. Clone this repo

1. run ```berks install``` to download and install cookbooks

1. Install aws command line tools
  See (Insert link to aws page)
  * `curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"`
  * unzip awscli-bundle.zip
  * sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

1. Set up your aws credentials
  * `aws configure`

  Verify they work.

1. Install kitchen-ec2 driver
  * TODO: doc this, we checked out repo and  `bundle install; bundle exec rake install`
    may be smarter way.
 
1. Set up keypair
Add this line to .config file
export AWS_SSH_KEY_ID=MyKeyPair2