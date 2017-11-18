# Extract .tar
tar xvf file.tar

# Extract .tar.gz 
tar xzf file.tar.gz

# Extract .tar.bz2 
tar xjf file.tar.bz2

# Extract to a specific directory
tar xzf file.tar.gz -C /home/alex/directory

# List all files contain in a .tar.gz file
tar -tf file.tar.gz > list.txt
