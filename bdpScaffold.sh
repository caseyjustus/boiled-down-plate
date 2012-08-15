#!/bin/bash
: '
      ////////////////////////////////////////////////////////////
     ////                                                    ////
    ////    Create APP Scaffolding using local version      ////
   ////    of vml-frontendframework-vX.X.                  ////
  ////    Usage: ./createScaffold.sh @AppName             ////
 ////                                                    ////
////////////////////////////////////////////////////////////
'


: '
  //--------------------------------------------------------//
 //      Update to the path of your local environment      //
//--------------------------------------------------------//
'
BaseDir=~/Sites


: '
    //--------------------------------------------------------//
   //      Update to the path of your local                  //
  //      vml-frontendframework repo. Do not including      //
 //      trailing slash                                    //
//--------------------------------------------------------//
'
FrameworkDir=~/Sites/FrontEndCOE/users/vml-frontendframework-v1.3


: '
  //--------------------------------------------------------//
 //      Create app directory using passed args            //
//--------------------------------------------------------//
'

if [[ $1 = '' || $1 = ' ' ]]; then
    : '----    Fallback if no path argument is passed    ----------'
    echo "Please enter the path where you would like your app built."
    echo "The base path will be: $HOME/"
    echo "Do not add / at beginning of the path"
    echo "Do not include the app directory name"
    read appPath
    
    echo "What is the name of your App?"
    read appName
    
    appDir=$HOME/$appPath
    
    echo "Creating $appDir directory"
    cd $appDir
    
    echo "Creating $appName directory"
    mkdir $appName
    cd $appName
else
    cd $BaseDir
    echo "Creating $1 directory"
    mkdir $1
    cd $1
fi


: '
  //--------------------------------------------------------//
 //      Copy framework into new app path                  //
//--------------------------------------------------------//
'
echo "Copying $FrameworkDir"
cp -R $FrameworkDir/ .


: '
  //--------------------------------------------------------//
 //      Pull in jQuery latest and greatest                //
//--------------------------------------------------------//
'
echo "Grabbing the latest version of jQuery"
curl http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js > assets/js/libs/jquery.min.js

: '
//--    Cleanup: Remove shell if still in directory    ---//
'
rm -R createFEDFrameworkScaffold.sh