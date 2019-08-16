# Gatsby Builder

This docker container will take your source Gatsby site files and output the deployment-ready static site files pulling from and writing to your desired directories. These directories are configurable from docker compose. 

# Setup

## Prerequisites

In order to run this container you will need to have [Docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/) installed on your system. 

## Environment

Run `git clone https://gitea.bnolet.me/brandon/gatsby-builder.git` to copy all the files to your local machine.

`cd gatsby-builder` to change into the proper directory.

Create a file named `.env` and put inside the following values:

    USERID=<your-uid>
    GROUPID=<your-gid>

You can find these values by entering `id -u` and `id -g` in your terminal. This is to ensure the outputted files are accessible to you, the user.

Modify `docker-compose.yml` to have the `./src` and `./public` volumes point to your desired folder. For example, if your source files are located in `/home/user/hello-world` then that is what you would set the source volume to: `- /home/user/hello-world:/src`. You can set the `/public` directory to be mapped to a host folder in a similar fashion. The `public` folder is that which will hold the static site files (html, css, js).

# Building

Once you've set up your environment, simply run `docker-compose up` from the `gatsby-builder` directory in which the modified `docker-compose.yml` file resides. The static site files will be deposited in your target folder and should be fully accessible to you. 