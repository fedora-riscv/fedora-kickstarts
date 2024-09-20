%include repos/fedora-koji-rawhide.ks
%include fedora-disk-base.ks
%include fedora-disk-xbase.ks
%include common/fedora-workstation-common.ks
 
autopart --type=plain --noswap

%packages
-initial-setup
-initial-setup-gui
gnome-initial-setup
anaconda-webui
%end
