# To view failed attempts to login via ssh
grep sshd.\*Failed /var/log/auth.log

# Look for failed connections
grep sshd.*Did /var/log/auth.log
