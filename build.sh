#!/usr/bin/env bash

# Start building the containers and add the right folders
read -p $'\e[33m Do you have filled in the .env file (y/n)? \e[0m ' answer
case ${answer:0:1} in
	y|Y )
		echo "INFO creating the directories"
		mkdir -p certs/ certs-data/ logs/nginx/ mysql/ www/
		echo "INFO building the containers"
		docker-compose up -d
		exit 0;
	;;
	* )
		echo "INFO: Exiting without building containers or adding files and folders"
        exit 0;
    ;;
esac

exit 0;