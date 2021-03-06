dir=~/dotfiles-arch
olddir=~/dotfiles-arch_old
files="colorschemes bashrc bash_profile i3 xinitrc Xmodmap Xresources config"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo
echo "Finished."
echo
