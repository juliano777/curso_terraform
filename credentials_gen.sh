#!/bin/bash

touch credentials/{amazon_aws,ms_azure}.sh

ssh-keygen -f credentials/aws-key -P '' -t rsa

