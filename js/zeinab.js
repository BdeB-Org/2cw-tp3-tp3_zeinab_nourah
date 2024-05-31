// méthode pour payer
function payer() {

  const payementUrl = 'https://buy.stripe.com/test_14kaFs9YNgBWe7S001';

  const params = new URLSearchParams({
      product_id: '12345',
      user_id: '67890'
  }).toString();


  window.location.href = `${payementUrl}?${params}`;
}










// Définition de la fonction createNode
function createNode(element) {
    return document.createElement(element);
}

// Définition de la fonction append
function append(parent, el) {
    return parent.appendChild(el);
}

// Attacher l'événement au bouton
document.getElementById("afficherInfos").addEventListener("click", afficherInformations);
// Fonction pour afficher les informations du menu
function afficherInformations() {
    const menu_ul = document.getElementById("menu");
    const urlMenu = "http://localhost:8080/ords/hr2/menu_forever_22/";

    fetch(urlMenu)
        .then((resp) => resp.json())
        .then(function (data) {
            let menu = data.items;
            // Effacer le contenu précédent de la liste
            menu_ul.innerHTML = ""; 
            menu.forEach(function (item) {
                let li = createNode("li"),
                    span = createNode("span");
                span.innerHTML = `ID Magasin: ${menu.id_magasin}, Haut: ${menu.haut}, Bas: ${menu.bas}, Soulier: ${item.soulier}`;
                append(li, span);
                append(menu_ul, li);
            });
        })
        .catch(function (error) {
            console.log(JSON.stringify(error));
        });
}




// Définition de la fonction createNode
function createNode(element) {
    // Création d'un nouvel élément DOM avec le type spécifié
    return document.createElement(element);
  }
   
  // Définition de la fonction append
  function append(parent, el) {
    // Attache l'élément `el` comme enfant de l'élément `parent`
    return parent.appendChild(el);
  }
   
  // Sélection des éléments HTML dans le document
  const menu_ul = document.getElementById("menu"); // Sélectionne l'élément avec l'ID "menu"
  const haut_ul = document.getElementById("haut"); // Sélectionne l'élément avec l'ID "haut"
  const bas_ul = document.getElementById("bas"); // Sélectionne l'élément avec l'ID "bas"
  const soulier_ul = document.getElementById("soulier"); // Sélectionne l'élément avec l'ID "soulier"
   
  // URLs de l'API contenant les données
  const urlMenu = "http://localhost:8080/ords/hr2/menu_forever_22/";
  const urlHaut = "http://localhost:8080/ords/hr2/haut/";
  const urlBas = "http://localhost:8080/ords/hr2/bas/";
  const urlSoulier = "http://localhost:8080/ords/hr2/soulier/";
   
  // Fonction pour récupérer et afficher les données
fetchData(menu_ulhaut_ul,bas_ul , soulier_ul) 
    fetch(url)
      .then((resp) => resp.json()) // Convertit la réponse en format JSON
      .then(function (data) { // Manipule les données JSON
        let menu_forever_22 = data.items;
        items.map(function (item) {
          let li = createNode("li"),
            span = createNode("span");
          span.innerHTML = itemFields.map(field => item[field]).join(' ');
          append(li, span);
          append(ulElement, li);
        });
      })
      .catch(function (error) {
        console.log(JSON.stringify(error)); // Affiche l'erreur dans la console
      });
  
   
  // Récupération et affichage des données pour chaque table
  fetchData(urlMenu, menu_ul, ['id_magasin', 'haut', 'bas', 'soulier']);
  fetchData(urlHaut, haut_ul, ['id_haut', 'prix', 'taille', 'description']);
  fetchData(urlBas, bas_ul, ['id_bas', 'prix', 'taille', 'description']);
  fetchData(urlSoulier, soulier_ul, ['id_soulier', 'marque', 'prix']);


