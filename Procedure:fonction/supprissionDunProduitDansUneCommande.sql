
/* Suppression de produit d'une commande */

CREATE OR REPLACE PROCEDURE supprimerUnProduitDuneCommande ( p_idproduit IN produit.id%TYPE, p_idcommande commande.id%TYPE)
IS	
	nomProduit produit.libelle%TYPE;
BEGIN 
	
	SELECT libelle INTO nomProduit
	FROM produit
	WHERE produit.id = p_idproduit;
	
	DELETE FROM commandeproduit
		   WHERE refproduit = p_idproduit
		   AND refcommande = p_idcommande;
	
	DBMS_OUTPUT.PUT_LINE('ce produit'|| nomProduit ||'a été supprimer de la commande');

END supprimerUnProduitDuneCommande;