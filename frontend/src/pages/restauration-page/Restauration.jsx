import React, { useState, useEffect } from "react";
import DisplayRestauration from "../../components/DisplayRestauration";
import restaurationsData from "../../data/restaurants.json";
import "./restauration.css";

function RestaurationPage() {
  const [restaurations, setRestaurations] = useState([]);

  useEffect(() => {
    setRestaurations(restaurationsData);
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
