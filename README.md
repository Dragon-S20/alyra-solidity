# alyra-solidity

## ex01:

Créez les fichiers SolidityCourse.sol et Logger.sol du cours de ce matin dans votre environment de travail sur remix. Déployez les, et utilisez les. Décrivez avec vos propres mots les fonctionnalités du smart contracts SolidityCourse Attention lorsque vous déployez le contrat de vérifier que vous déployez bien le contrat SolidityCourse et non pas le contrat Logger

## ex02:

Ecrivez un smart contract Calc qui sera définit dans le fichier Calc.sol le contrat Calc comportera 4 fonctions de calculs add, sub, mul, div qui prennent en paramètres 2 uint et qui retournera l'opération de calcule appliquée à ces 2 uint Il faudra mettre les bons paramètres de visibilité sur ces fonctions, et aussi les déclarer en fonction de leur accès aux données du smart contract (view vs pure vs rien).

## ex03:

Le view est gratuit et permet de lire simplement le contrat. Il s'applique à une fonction

Le pure empêche toute modification ou lecture du state. Il s'applique à une fonction.

## ex04:

En reprenant le contrat précédent, mettez une protection avec un require ou un modifier pour que ces opérations de calculs ne puissent être effectuées que par l'adresse de celui ou celle ou qui déployé le contrat. Vérifiez bien, en utilisant remix qu'une autre adresse que celle qui a deployé le smart contract n'a pas accès aux fonctions du smart contract.

## ex05:

Rajoutez des commentaires de types natspec au smart contract précédent pour que l'on puisse générer une documentation technique de cette API de calcul. voir: https://solidity.readthedocs.io/en/v0.7.0/natspec-format.html

## ex06:

Ecrivez un smart contract qui contient des fonctions qui retournent le maximum d'info sur l'utilisateur qui effectue la transaction, la transaction elle même et le bloc contenant cette transaction. On peut imaginer des fonctions pour chacuns de ces élements ou une struct qui contiendrait ces informations. Aidez vous de: https://solidity.readthedocs.io/en/latest/cheatsheet.html#global-variables
