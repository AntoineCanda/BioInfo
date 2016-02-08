#! /usr/bin/env bash

TEST0=test0.fasta
TEST1=test1.fasta
TEST2=test2.fasta

FILE0=phage-lambda.fasta
FILE1=ebola-t.fasta
FILE2=ebola-z.fasta
FILE3=read1.fasta
FILE4=read2.fasta

bioseq='java -jar bioseq.jar'

echo "Exemple des fonctions reprenant les exemples de la partie I"
echo 
# Exemple fonction windows
$bioseq "windows" 80 40 $FILE0
echo 

# Question 2 : Formule donnant le nombre de fenetres en fonction de la longueur n de la sequence de l la longueur de la fenetre et s le shift.
# J'ai l'impression a premiere vue que la longueur l de la fenetre importe peu c'est le shift ici qui importe car c'est lui qui finalement represente en quelque sorte l'avancement du decoupage de la sequence en fenetre.
# On aurait ainsi (n/s)+1 fenetres. Si on teste avec phage-lambda on a : n = 48 502, l = 80 et s = 40 par exemple : n/s = 1212 + 1 = 1213 fenêtres. Si on a n = 100 et s = 30 on a 100/30 +1 = 4 fenetres (1- l /31 - l+30 / 61 - l + 60 / 91 - 100).


# Test et analyse de données de la partie I
echo "Test et analyse de données de la partie I"

# Test avec le fichier read1.fa 
echo "Test avec le fichier read1.fa"
# Test avec kmers de taille 4 
echo
echo "Test avec kmers de taille 4 et seuil 0.1 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.1 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 0.2 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.2 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 0.5 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.5 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 1.0 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 4 1.0 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 8  
echo
echo "Test avec kmers de taille 8 et seuil 0.1 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.1 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 0.2 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.2 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 0.5 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.5 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 1.0 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 8 1.0 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 12
echo
echo "Test avec kmers de taille 12 et seuil 0.1 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.1 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 0.2 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.2 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 0.5 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.5 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 1.0 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 12 1.0 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 16  
echo
echo "Test avec kmers de taille 16 et seuil 0.1 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.1 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 0.2 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.2 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 0.5 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.5 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 1.0 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 16 1.0 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 20  
echo
echo "Test avec kmers de taille 20 et seuil 0.1 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.1 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 0.2 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.2 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 0.5 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.5 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 1.0 avec read1.fa"
$bioseq "mapper-windows-kmers" 80 40 20 1.0 $FILE3 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec le fichier read2.fa 
echo "Test avec le fichier read2.fa"
# Test avec kmers de taille 4 
echo
echo "Test avec kmers de taille 4 et seuil 0.1 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.1 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 0.2 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.2 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 0.5 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 4 0.5 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 4 et seuil 1.0 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 4 1.0 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 8  
echo
echo "Test avec kmers de taille 8 et seuil 0.1 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.1 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 0.2 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.2 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 0.5 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 8 0.5 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 8 et seuil 1.0 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 8 1.0 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 12
echo
echo "Test avec kmers de taille 12 et seuil 0.1 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.1 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 0.2 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.2 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 0.5 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 12 0.5 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 12 et seuil 1.0 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 12 1.0 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 16  
echo
echo "Test avec kmers de taille 16 et seuil 0.1 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.1 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 0.2 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.2 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 0.5 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 16 0.5 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 16 et seuil 1.0 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 16 1.0 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Test avec kmers de taille 20  
echo
echo "Test avec kmers de taille 20 et seuil 0.1 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.1 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 0.2 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.2 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 0.5 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 20 0.5 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

echo
echo "Test avec kmers de taille 20 et seuil 1.0 avec read2.fa"
$bioseq "mapper-windows-kmers" 80 40 20 1.0 $FILE4 $FILE0
echo
read -p "Appuyer sur une touche pour continuer ..."

# Analyse des données de la partie I
# On voit clairement que les kmers de taille 4 n'apporte que très peu d'informations pertinentes et c'etait attendu : il y a trop peu de kmers de taille 4 différents (256) pour ne pas être fort présent même dans des fenêtres de taille 80.
# En revanche a partir de kmers de taille 8: on a pour le fichier read1 que deux windows qui correspondent : celle de 27 841 à 27 920 et celle 27 881 à 27 960. On a donc cette fenêtre de 120 kmers avec plus de 50% de kmers de taille 8 présents.
# Les kmers de taille 12 nous apporte une information supplémentaire: il y a entre 20 et 50% de kmers communs dans cette tranche. Les kmers de taille 16 avec au moins 20% de similitude nous réduise cette fois la fenêtre à 27841 à 27920.
# On voit par la suite que les kmers de taille 20 ont également entre 20 et 50% de similitude. On en déduit donc que dans cette tranche de 80 kmers on a une forte ressemblance avec la sequence de read1. Des kmers de 20 (environ 1000 10^9) sont suffissamment unique 
# (et la taile de la fenêtre suffissamment petite (80)) pour qu'on puisse affirmer que dans ce cas présent c'est vraiment la similitude qui prime.
#
# Pour le fichier read2 on en deduit les faits suivants : 
# Les kmers de taille 4 nous indique à partir de 50% trois zones de ressemblance: 24 201 à 24 280, 28 241 à 28 320 et 34 841 à 34 960. Ce n'est pas suprenant encore une fois. 
# Les kmers de taille 8 réduise à la tranche 3 de 34 841 à 34960 sans en dire plus entre 20 et 50% de ressemblance. Les kmers de taille 12 nous montre qu'il y a entre 10 et 20% de similitude pour cette taille de kmers.
# On a plus de similitude à partir de kmers de taille 16 même à moins de 10%. On en déduit donc que la ressemblance entre phage-lambda et read2 est moins elevé. Il faudrait probablement essayer de jouer avec la taille 
# de la longueur et du switch des fenetres pour affiner les résultats. 
#
# Les fenêtres permettent de pouvoir isoler des zones de similitude entre deux séquences et ainsi pouvoir analyser quelle mutation sont arrivés et pourquoi pas de retracer un peu l'histoire de celles ci. 
# On remarque egalement que le ratio de 1.0 est inutile dans ce cas précis : il est plus intéressant d'avoir des tailles de kmers un peu plus important (notamment que 4 ou 8 si on prend des fenetres de l'ordre des dizaines de milliers de nucleotides (voir même millions)) qu'un ratio elevé.
# On pourrait par exemple mettre 0.8 au lieu de 1.0 pour affiner eventuellement les resultats.
 
echo
echo "Test list-spaced-kmers"
echo
$bioseq "list-spaced-kmers" "##-##" $TEST1
echo

echo "Les fonctions common-spaced-kmers et ratio-common-spaced-kmers ont ete adaptés."
echo "En revanche quand une graine est utilisé j'ai fais le choix d'utiliser la graine utilisé en parametre sur le fichier 1 mais de calculer le poids de la graine et d'utiliser une graine de poids equivalent 'pleine'"

# Test et analyse de données pour la partie II

echo "Test et analyse de données pour la partie II"
echo 
echo "Creation des fichiers des sequences d'ebola-z aleatoirement mutes avec 0 10 100 1000 et 10000 mutations aleatoires"
echo

$bioseq "random-mutations" 0 $FILE2
$bioseq "random-mutations" 10 $FILE2
$bioseq "random-mutations" 100 $FILE2
$bioseq "random-mutations" 1000 $FILE2
$bioseq "random-mutations" 10000 $FILE2

echo "Test avec graine ####-####"
echo
$bioseq "ratio-common-spaced-kmers" "####-####" $FILE2 ebola-z-mutated-0.fasta
echo 

echo "Test avec graine ####-####"
echo
$bioseq "ratio-common-spaced-kmers" "####-####" $FILE2 ebola-z-mutated-10.fasta
echo 

echo "Test avec graine ####-####"
echo
$bioseq "ratio-common-spaced-kmers" "####-####" $FILE2 ebola-z-mutated-100.fasta
echo 

echo "Test avec graine ####-####"
echo
$bioseq "ratio-common-spaced-kmers" "####-####" $FILE2 ebola-z-mutated-1000.fasta
echo 

echo "Test avec graine ####-####"
echo
$bioseq "ratio-common-spaced-kmers" "####-####" $FILE2 ebola-z-mutated-10000.fasta
echo 


read -p "Appuyer sur une touche pour continuer ..."

#
#
#
#
#
#
#

# Test et analyse de données partie II - 2
echo "Test et analyse de données partie II - 2"
echo 
# Fichier read1
echo "Test avec le fichier read1"
echo "Test avec graines de poids 4 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "##-##" 0.2 $FILE3 $FILE0
echo

echo "Test avec graines de poids 8 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "####-####" 0.2 $FILE3 $FILE0
echo

echo "Test avec graines de poids 8 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "##-##-####" 0.2 $FILE3 $FILE0
echo

echo "Test avec graines de poids 12 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "######-######" 0.2 $FILE3 $FILE0
echo

echo "Test avec graines de poids 12 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "####-###-#-####" 0.2 $FILE3 $FILE0
echo

echo "Test avec graines de poids 16 et ratio > 0.2"
$bioseq "mapper-windows-spaced-kmers" 80 40 "####-###-###-##-####" 0.2 $FILE3 $FILE0
echo

read -p "Appuyer sur une touche pour continuer ..."