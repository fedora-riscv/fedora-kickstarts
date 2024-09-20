repo --name=rawhide --baseurl=http://openkoji.iscas.ac.cn/kojifiles/repos/f41-build/latest/riscv64/
url --baseurl=http://openkoji.iscas.ac.cn/kojifiles/repos/f41-build/latest/riscv64/

%post

#Disable existed repo files
mkdir -p /etc/yum.repos.d/backup
mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/backup/

# Create Openfedora RISC-V Koji repo
cat << EOF > /etc/yum.repos.d/fedora-riscv-koji.repo
[fedora-riscv-koji]
name=Fedora RISC-V Koji
baseurl=http://openkoji.iscas.ac.cn/kojifiles/repos/f41-build/latest/riscv64/
enabled=1
gpgcheck=0
EOF

%end
