%include repos/fedora-koji-rawhide.ks
%include fedora-disk-base.ks
%include fedora-disk-xbase.ks
%include common/fedora-xfce-common.ks
 
autopart --type=plain --noswap
