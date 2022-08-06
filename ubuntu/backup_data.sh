#!/usr/bin/sh


# $1 is the user
# $2 is the destination

# Export the data directory
src_data_dir=$1/data
echo $src_data_dir
dst_data_dir=$2/data_dir
rsync -avh --no-links --progress --exclude 'anaconda3' --exclude "node_modules" --exclude "nltk_data" $src_data_dir $dst_data_dir

# Export the config details
dst_home_dir=$2/home_data_dir
rsync -avh ---no-links --progress --exclude-from='./ignore_files.txt' $1 $dst_home_dir
