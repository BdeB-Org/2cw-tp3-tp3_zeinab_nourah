// méthode pour afficher
function afficher() {
    let description = "Chandail rouge de chez Forever 22";
    document.getElementById("nvDesc").textContent = description;
}

document.addEventListener("DOMContentLoaded", function () {
    // Récupérer les données des hauts depuis l'API REST
    fetch('/api/haut')
        .then(response => response.json())
        .then(data => {
            const hautsContainer = document.getElementById('hauts-container');
            data.forEach(haut => {
                // Créer un élément HTML pour afficher les données du haut
                const hautElement = document.createElement('div');
                hautElement.classList.add('haut');
                hautElement.innerHTML = `
                    <figure>
                        <img src="${haut.image}" alt="Image du haut">
                        <p>${haut.description}</p>
                        <p>Prix: ${haut.prix}</p>
                        <!-- Ajoutez d'autres informations sur le haut -->
                    </figure>
                `;
                // Ajouter l'élément HTML à la section des hauts
                hautsContainer.appendChild(hautElement);
            });
        })
        .catch(error => console.error('Erreur lors de la récupération des données des hauts:', error));
});

//méthode pour payer
function payer() {

    const payementUrl = 'https://buy.stripe.com/test_14kaFs9YNgBWe7S001';

    const params = new URLSearchParams({
        product_id: '12345',
        user_id: '67890'
    }).toString();


    window.location.href = `${payementUrl}?${params}`;
}










