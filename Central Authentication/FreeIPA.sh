sudo yum -y install freeipa-client ipa-admintools
ipa-client-install --mkhomedir --force-ntpd
sudo ipa-client-install --hostname=rhel8.example.com --mkhomedir --server=it3510x01cf-
ipa.ad.uvu.edu --domain ad.uvu.edu --realm AD.UVU.EDU
