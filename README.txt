This is the elbuilds repository for Enterprise Linux.

Usage:

$ sudo rpm --import http://repo.elbuilds.website:8000/pki/rpm-gpg/RPM-GPG-KEY-elbuilds
$ sudo yum -y install http://repo.elbuilds.website:8000/7/x86_64/Packages/elbuilds-release/latest/elbuilds-release-latest.el7.elbuilds.noarch.rpm
$ sudo yum -y install epel-release
$ sudo yum makecache

Notice:

No i686 and multilib support.

