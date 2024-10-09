CentOS7 ran out of maintenance and as of July 2024, the original mirror
was disabled and the repos pointing to mirror*.centos.org needed to be
replaced by vault.centos.org.
The repo information was extracted from the centOS image and the necessary
modifications were applied to it. Now they are copied into the appropriate
location during building the docker container.