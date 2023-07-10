import React, { useState, useEffect } from "react";
import DisplayRestauration from "../../components/DisplayRestauration";
import "./restauration.css";

function RestaurationPage() {
  const [restaurations, setRestaurations] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch("http://localhost:5000/restaurants");
        const jsonData = await response.json();

        setRestaurations(jsonData);
      } catch (error) {
        console.error("Erreur lors de la récupération des données:", error);
      }
    };

    fetchData();
  }, []);

  return (
    <div className="restauration-page">
      {restaurations.map((restauration) => (
        <DisplayRestauration
          key={restauration.id}
          restauration={restauration}
        />
      ))}
    </div>
  );
}

export default RestaurationPage;
