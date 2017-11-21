# Give read/write permissions to a disk
chown -R alex:alex /media/alex/sandiska

# Delete all soft-link recursively from a root folder
find -type l -delete

# Delete all given file recursively from a root folder
find . -name "pymap_pc_up0001.nfn" -print0 | xargs -0 rm -rf

# Auto-startup xfce configuration files
~/.config/autostart
