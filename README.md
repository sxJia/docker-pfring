This docker container is a base image containing pf_ring userland
libraries. Containers using pf_ring must be run with the
--privileged option, and the pf_ring kernel module must be
compiled and loaded on the host.
