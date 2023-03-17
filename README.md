# background-update

## Description

This is simple scripts to make the following actions:
* every 10 minutes get the bacground images from bing.com
* download the new one
* get the last image in the folder and set it as ~/Pictures/BacgroundImage.jpg

## Using

### Set it up

Run script _./install.sh_
It creates a folders [~/.background-update, ~/Pictures/bu],
moves all scripts to ~/.background-update
and creates crontask to run.
That script will keep the newest beauitiful image in ~/Pictures/bu/
It there are any errors try to run _./install.sh_ again.

### Set bg image

Go to the settings of your bg images and select ~/Pictures/bu as a folder for you bg images.
I set to update every 10 minutes.
You can create a link and use it, but it didn't work for my mac
