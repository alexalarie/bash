# Get a list of file ordered from folder 
for i in `cd $path && ls -v *.jpg`; do 
echo $i; 
done

# Padding
printf "%05d\n" $i
