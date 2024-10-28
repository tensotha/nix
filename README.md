## move nixos config to home directory to edit without root access
sudo mv /etc/nixos ~/nixos
# don't forget to change <your_user> and <your_group>
sudo chown -R <your_user>:<your_group> ~/nixos
sudo ln -s ~/nixos /etc/nixos

this way your nixos commands will not fail, as /etc/nixos is symlinked to the actual directory...

I recommend chowning to a common group so that other users are able to access this directory/run nixos commands