#\#!SLASHBIN

###-> compil.sh

Ce script est pour simplifier la vie de certain. Rien de trèès exeptionel, il va juste lancer votre Makefile et votre binaire avec les arguments que vous lui passer.

Le point pratique c'est que le script ne lancera pas votre binaire s'il y a une erreur dans le makefile ou autre en regardant la sortie d'erreur du shell.

Un detail qui me tue toujours est que après un "make", tout les .o sont la juste pour faire tache (c'est personnel). Quand vous faite "vim mai" puis TAB, il vous sort "main." alors qu'on veut clairement ouvrir main.c. C'est pourquoi le script lance un "make clean" par derrière.

Le seul point négatif, c'est que le nom de votre dossier de travail doit être le même que ce lui du binaire générer. Exemple, le script lancera "./fdf" si votre dossier s'appel "fdf". 
![Test](http://nsa34.casimages.com/img/2015/01/18/150118121608128168.png "Exemple")

Pour cela:
Mettre compil.sh dans ~/bin/sh par exemple
Créez un alias dans votre ~/.bashrc ou ~/.zshrc qui execute ce fichier. Donc quelque chose comme ca : "function compil() {/bin/bash ~/bin/sh/compil.sh $*}"
Relancez votre shell pour que l'alias prenne effet.

Il suffit juste de faire "compil argv1 argv2 ..." a la racine du projet ou vous êtes.

###-> create

Créer un nouveau projet C. Il crée un dossier, copier la libft, les includes nécessaires, cree un .h du meme nom que le dossier créer, crée un Makefile puis un main.c.  
Essentiel dans .vimrc
<blockquote>
autocmd bufnewfile *.h so ~/.vim/templates/header_h.txt<br/>
autocmd bufnewfile *.h exe "0," . 3 . "g/ndef/s//ndef " .toupper(expand("%:r")).expand("_H")<br/>
autocmd bufnewfile *.h exe "0," . 3 . "g/define/s//define " .toupper(expand("%:r")).expand("_H")<br/>
autocmd bufnewfile *.h exe "0," . 5 . "g/libft/s//libft"<br/>
autocmd bufnewfile *.make so ~/.vim/templates/header_make.txt<br/>
</blockquote>

Rajoutez dans .zshrc 'function create() {$HOME/bin/create $* && cd $*}' pour être automatiquement dans le dossier.

###-> Espère pouvoir mettre plein d'autre truk cool :)


