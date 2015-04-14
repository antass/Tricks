## Remove a tracked file from repository witout deleting it from disc
git rm --cached file

## See what changes were made to a file before commiting 
## so that you can add an informative commit message
# If you want to see what you haven't git added yet:
git diff -- myfile.txt
# or if you want to see already-added changes
git diff --cached -- myfile.txt
