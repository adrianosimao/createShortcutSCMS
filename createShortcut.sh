#!/bin/bash
echo "Rentrez votre nom d'utilisateur"
read username
echo "Rentrez le nom de l'utilisateur d'ou vienne les fichier"
read defaultusername
adduser $username

defaultApkDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Apk/"
defaultDestinationApkDirectory="/home/"$username"/Apk"

defaultFilmsDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Films/"
defaultDestinationFilmsDirectory="/home/"$username"/Films"

defaultISODirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/ISO/"
defaultDestinationISODirectory="/home/"$username"/ISO"

defaultJeuxDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Jeux/"
defaultDestinationJeuxDirectory="/home/"$username"/Jeux"

defaultLivresDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Livres/"
defaultDestinationLivresDirectory="/home/"$username"/Livres"

defaultLogicielsDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Logiciels/"
defaultDestinationLogicielsDirectory="/home/"$username"/Logiciels"

defaultPhotosDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Photos/"
defaultDestinationPhotosDirectory="/home/"$username"/Photos"

defaultSeriesDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Series/"
defaultDestinationSeriesDirectory="/home/"$username"/Series"

defaultTutorielsDirectory="/home/"$defaultusername"/srv_apache/repository.scms.ovh/Tutoriels/"
defaultDestinationTutorielsDirectory="/home/"$username"/Tutoriels"


ln -s $defaultApkDirectory  $defaultDestinationApkDirectory

ln -s $defaultFilmsDirectory  $defaultDestinationFilmsDirectory

ln -s $defaultISODirectory  $defaultDestinationISODirectory

ln -s $defaultJeuxDirectory  $defaultDestinationJeuxDirectory

ln -s $defaultLivresDirectory  $defaultDestinationLivresDirectory

ln -s $defaultLogicielsDirectory  $defaultDestinationLogicielsDirectory

ln -s $defaultPhotosDirectory  $defaultDestinationPhotosDirectory

ln -s $defaultSeriesDirectory  $defaultDestinationSeriesDirectory

ln -s $defaultTutorielsDirectory  $defaultDestinationTutorielsDirectory

