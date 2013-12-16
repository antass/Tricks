# Move select files to a new folder and leave symlinks in the old folder
cd $original_directory  
for i in <files to process> ; do  
    mv ./$i $new_directory/  
    ln -s $new_directory/$i ./$i
done

# Search for files in `ll`
ll | grep substring_to_find 
ll | grep -v substring_to_exclude

# Copy files which match a pattern (I wanted to find all files that started with s5 or s6 or s7)
ls | grep \&lt;s\(5\|6\|7\)\> | xargs cp -t dest_folder

# Compare folders and file duplicates by size (different names)
# Usage: list duplicated sample files in different GEO data series In Unix in every directory
cksum  * | sort -n > filelist

# Fix 'hardware disabled' WIFI problem (Linux only)
# Check status with 
rfkill list all
# Unblock with
rfkill unblock all

## Kill process
$ ps -ef | grep firefox 
1986 ? Sl 7:22 /usr/lib/firefox-3.5.3/firefox $ kill -9 1986

## Check folder size
# `-h` make output human readable
du -h

# Check disk quota
quota -v

## Copy files over SSH
scp -rvp from/ to/
#*   `r` - recursively (does not follow symbolic links) 
#*   `v` - verbose output 
#*   `p` - preserve permissions and timestamps

# Check differences between local and remote folders
rsync --dry-run -v diff1/ diff2/
#*   `v` - verbose output 
#*   `dry-run` - (double dash before command) doesn't run, but show what would happen if

# Use `cron`
# Check what cron jobs are set up 
crcontab -l
# Edit cron jobs 
crontab -e

# Strip bash colors from file
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" file

# Set up password-less access to LinGA servers
# 1. Edit in `vim`:
sudo vim ~/.ssh/config
# 2. Add/edit this:
Host rubysky
Hostname rubysky.bumc.bu.edu
User aniat
IdentityFile ~/.ssh/bu_id_rsa
# Save the file.
# 3. Then in the terminal, type:
ssh-keygen -t rsa
# It'll ask where to save the key. When it does, enter:
~/.ssh/bu_id_rsa
# Leave the passphrase empty, and press `Enter`
# Do this command:
ssh-copy-id -i ~/.ssh/bu_id_rsa.pub aniat@rubysky.bumc.bu.edu
# The following should work:
ssh rubysky

### Mass rename files
exec zsh
autoload zmv
zmv 'run_WGCNA(*).R' 'run_WGCNA2$1.R' # will rename run_WGCNA_lam_grt.R to run_WGCNA2_lam_grt.R

