# To view failed attempts to login via ssh
grep sshd.\*Failed /var/log/auth.log

# Look for failed connections
grep sshd.*Did /var/log/auth.log

# SSH login without password
ssh-keygen -t rsa # Press enter to all
# Create .ssh file on target
cat .ssh/id_rsa.pub | ssh b@B 'cat >> .ssh/authorized_keys'

# Change permission to folder/file
.ssh to 700
.ssh/authorized_keys to 640

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
