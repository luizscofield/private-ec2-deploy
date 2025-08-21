# Private EC2 module

This module creates an Ubuntu EC2 instance on a private subnet with full outbound traffic allowed.
It doesn't specify a key pair because the intention is to access it using the SSM agent.