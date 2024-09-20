%include repos/fedora-koji-rawhide.ks
%include fedora-disk-base.ks
%include common/fedora-minimal-common.ks
 
services --enabled=sshd,NetworkManager,chronyd,initial-setup
 
autopart --type=plain --noswap
