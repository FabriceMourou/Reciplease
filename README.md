![Title](https://i.imgur.com/2PQWByG.png)

# Reciplease

Cette application  permet de rechercher des recettes à partir d'ingrédients .
On peut également conserver ses recettes préférées en favori.
L'application est donc divisée deux parties. On navigue entre ces parties avec une **TabBar**

L'application se divise en **4 vues** :

- ### Une vue appelée : "What's in your fridge ?"

L'utilisateur Choisit ses ingrédients :
- Un **TextField** lui permet d'ajouter ses ingredients les uns après les autres 
- Le bouton "Add" ajoute les ingrédients a une liste
- Le bouton "Clear" supprime tous les ingredients de cette liste
- Le bouton "Search for recipes" lance la recherche des recettes

![Fridge](https://i.imgur.com/6vHzB3X.png)

- ### Une vue qui recense la liste des recettes  :

Les résultats de la recherche sont affichés dans une **tableView**
Chaq􏰁ue cellule de la li􏰃􏰂ste cont􏰂ient􏰂 a􏰁u moin􏰃s : 􏰄
- Le titre de la 􏰅recett􏰂􏰂e
- L􏰆'image􏰇 de cette recette
- Un extrait de la list􏰃􏰂e de􏰃 ing􏰅rédien􏰂􏰃ts
- La d􏰁􏰅urée d'􏰆ex􏰊écut􏰁􏰂ion de la 􏰅recett􏰂􏰂e􏰇 􏰃
- Le type de la recette (sans gluten, végétarien, ...)

![List](https://i.imgur.com/tfl8eeZ.png)

S􏰁􏰅ur cett􏰂􏰂e page􏰇 􏰁un bout􏰁􏰂on pe􏰅rme􏰂t de 􏰃sauv􏰁􏰌ega􏰅rder􏰅 la r􏰅ece􏰂􏰂tte dans􏰃 􏰃ses􏰃 fa􏰌vo􏰅ris.􏰃􏰋

Ce Controller va aussi servir à afficher la page des recettes favorites.
Si cette liste est vide, un message sera donné à l'utilisateur pour lui expliquer comment choisir ses recettes favorites.

- ### Une vue de détail de la recette :

La vue de dét􏰂ail de la 􏰅recett􏰂􏰂e doi􏰂t con􏰂teni􏰅r a􏰁u moin􏰃s : 􏰄
- Le 􏰂ti􏰂􏰅tre de la r􏰅ece􏰂􏰂tte
- La li􏰃􏰂ste complè􏰂te de􏰃s ing􏰅rédien􏰂􏰃ts a􏰌vec le dét􏰂ail des􏰃 port􏰅􏰂ion􏰃s
- L􏰆'image􏰇 
- La dur􏰁􏰅ée d􏰆'ex􏰊éc􏰁􏰂ution de la r􏰅ecett􏰂􏰂e􏰇 
- La no􏰂e􏰇 􏰃i elle e􏰃􏰂 p􏰅é􏰃en􏰂e
- Le type de la recette (sans gluten, végétarien, ...)


Un bouton pour sauvegarder la recette dans ses favoris.

![Detail](https://i.imgur.com/8hyVcXX.png)

Un bouton pour accéder à la liste détaillée des instructions sur une page web.

![Instruction ](https://i.imgur.com/9lEush4.png)

## Ca que j'ai appris

- Sauvegarder des données avec Core Data
- Utiliser le delegate pattern
- Utiliser une librairie open source 
- Gérer une Table View
