const fs = require("fs");

const accommodationsData = require("./hebergements.json");

const updatedAccommodations = accommodationsData.map((accommodation) => {
  return {
    ...accommodation,
    image: "https://images.pexels.com/photos/1770809/pexels-photo-1770809.jpeg", // Remplacez par le chemin de votre image
  };
});

const updatedData = JSON.stringify(updatedAccommodations, null, 2);

fs.writeFileSync("./hebergements.json", updatedData, "utf-8");

console.log('Propriété "image" ajoutée à tous les hébergements avec succès.');
