# Move select files to a new folder and leave symlinks in the old folder
cd $original_directory  
for i in <files to process> ; do  
    mv ./$i $new_directory/  
    ln -s $new_directory/$i ./$i
done
