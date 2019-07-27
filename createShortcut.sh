#!/bin/bash
echo "Rentrez votre nom d'utilisateur"
read username
adduser $username

defaultApkDirectory="/home/adriano/srv_apache/repository.scms.ovh/Apk/"
defaultDestinationApkDirectory="/home/"$username"/Apk"

defaultFilmsDirectory="/home/adriano/srv_apache/repository.scms.ovh/Films/"
defaultDestinationFilmsDirectory="/home/"$username"/Films"

defaultISODirectory="/home/adriano/srv_apache/repository.scms.ovh/ISO/"
defaultDestinationISODirectory="/home/"$username"/ISO"

defaultJeuxDirectory="/home/adriano/srv_apache/repository.scms.ovh/Jeux/"
defaultDestinationJeuxDirectory="/home/"$username"/Jeux"

defaultLivresDirectory="/home/adriano/srv_apache/repository.scms.ovh/Livres/"
defaultDestinationLivresDirectory="/home/"$username"/Livres"

defaultLogicielsDirectory="/home/adriano/srv_apache/repository.scms.ovh/Logiciels/"
defaultDestinationLogicielsDirectory="/home/"$username"/Logiciels"

defaultPhotosDirectory="/home/adriano/srv_apache/repository.scms.ovh/Photos/"
defaultDestinationPhotosDirectory="/home/"$username"/Photos"

defaultSeriesDirectory="/home/adriano/srv_apache/repository.scms.ovh/Series/"
defaultDestinationSeriesDirectory="/home/"$username"/Series"

defaultTutorielsDirectory="/home/adriano/srv_apache/repository.scms.ovh/Tutoriels/"
defaultDestinationTutorielsDirectory="/home/"$username"/Tutoriels"

defaultUpScmsDirectory="/home/adriano/srv_apache/up.scms.ovh"
defaultDestinationUpScmsDirectory="/home/"$username"/up.scms.ovh"

ln -s $defaultApkDirectory  $defaultDestinationApkDirectory

ln -s $defaultFilmsDirectory  $defaultDestinationFilmsDirectory

ln -s $defaultISODirectory  $defaultDestinationISODirectory

ln -s $defaultJeuxDirectory  $defaultDestinationJeuxDirectory

ln -s $defaultLivresDirectory  $defaultDestinationLivresDirectory

ln -s $defaultLogicielsDirectory  $defaultDestinationLogicielsDirectory

ln -s $defaultPhotosDirectory  $defaultDestinationPhotosDirectory

ln -s $defaultSeriesDirectory  $defaultDestinationSeriesDirectory

ln -s $defaultTutorielsDirectory  $defaultDestinationTutorielsDirectory

ln -s $defaultUpScmsDirectory  $defaultDestinationUpScmsDirectory


echo "Creation du compte FTP pour les utilisateurs"

homeDirectory="/home/"$username""

echo "Rentrez l'uid"
read uid

echo "Rentrez le mot de passe"
read ftpPassword
echo $ftpPassword | ftpasswd --stdin --passwd --name=$username --uid=$uid --home=$homeDirectory --shell=/bin/false 
