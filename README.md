#\#!SLASHBIN

###-> compil.sh

Ce script est pour simplifier la vie de certain. Rien de trèès exeptionel, il va juste lancer votre Makefile et votre binaire avec les argument que vou lui passer.
Le point partique c'est que le script ne lancera pas votre binaire s'il y a une erreur dans le makefile ou autre en regardant la sortie d'erreur du shell.
Le detail qui me tue toujour est que apres un "make", tout les .o sont la juste pour faire tache (c'est personnel). Quand vous faite "vim mai<TAB>", il vous sort "main." alors qu'on veut clairement ouvrir main.c. C'est pourquoi le script lance un "make clean" par derrier.
Le seul point negatif, c'est que le nom de votre dossier de travail doit etre le même que ce lui du binaire generer. Exemple, le script lancera "./fdf" si votre dossier s'appel "fdf".
![Test](http://nsa34.casimages.com/img/2015/01/18/150118121608128168.png)

Pour cela:
Mettre compil.sh dans ~/bin/sh par exemple
Créer un alias dans votre ~/.bashrc ou ~/.zshrc qui execute ce fichier. Donc quelque chose comme ca : "function compil() {/bin/bash ~/bin/sh/compil.sh $*}"
Relancer votre shell pour que l'alias prenne effet

Il suffit juste de faire "compil argv1 argv2 ..." a la racine du projet ou vous etes.




