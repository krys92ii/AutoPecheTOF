# AutoPecheTOF
Petit outil qui permet d'automatiser la pêche sur Tower of Fantasy codé en autoIT

## Disclamer

Cet outil ne fait ni plus ni moins que de simuler ce qu'un vrai joueur fait lorsque l'on pêche sur Tower of Fantasy.

Pour cela il analyse la couleur des pixels de votre écran pour voir où est la barre de pêche et appuye sur les touches du clavier gauche ou droite en fonction de la position. 

Ainsi le fait d'utiliser celui-ci ou de faire vous-même votre pêche manuellement est indiscernable par le jeu. Vous ne risquez donc pas de vous faire bannir pour l'utilisation de celui-ci, ceci dit bien évidemment comme je le fournis gratuitement je décline toute responsabilité par rapport à son utilisation. Ce n'est pas le seul outil de ce type sur github, et même gateoo lui-même en a utilisé un de ce type en stream sur twitch sans souci si cela peut vous rassurer ;)

## Pré-requis

 - TOF lancé en plein écran
 - Résolution d'écran de 1920x1080 ou 1680x1050 (si vous avez une autre résolution vous pouvez m'envoyer une capture d'écran de votre jeu en train de pêcher un poisson et j'ajouterai votre résolution au programme)
 - Paramètre windows "mise à l'échelle et disposition" réglé à 100% (pour voir ce paramètre faites un clic droit sur le bureau windows puis "paramètres d'affichage").

## Comment l'executer

1°) le plus simple : télécharger l'exe compilé directement en cliquant sur la droite. Windows va surement vous prévenir qu'il s'agit d'un virus car windows defender est stupide et catalogue tout les executables codés avec autoit comme tel, mais ce sont des faux positifs donc vous pouvez passer outre sans risque

2°) un peu plus long mais sans alerte de sécurité windows : compiler vous-même le programme.

Pour cela c'est simple, téléchargez ces 2 fichiers :

https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.zip

https://www.autoitscript.com/cgi-bin/getfile.pl?../autoit3/scite/download/SciTE4AutoIt3.exe

Une fois téléchargés, installez-les dans l'ordre en choisissant l'option "edit the script" au lieu de "run the script" lorsque cela vous est demandé (ce n'est pas obligatoire mais c'est plus simple comme cela).

Une fois les programmes installés, téléchargez le fichier peche.au3 disponible sur cette page. Faites un clic droit dessus puis "edit script". Une fois la fenêtre de code ouverte appuyez sur F5 pour compiler et lancer le programme.

##Mode d'emploi

Une fois le programme executé, commencez à pêcher un poisson et le reste se fera tout seul tout simplement :)

Pour arrêter le programme, appuyez sur la touche F6.

Bonne pêche à vous ! :)
