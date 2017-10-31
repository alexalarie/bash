# Uncompress all .tar.gz located in the current folder ($PWD)

for f in $PWD/*.tar.gz
do
	echo "Processing $f"
	tar zxf $f
done
