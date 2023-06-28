import React, { useState, useEffect } from "react";
import DisplayAccommodation from "../../components/DisplayAccommodation";
import accommodationsData from "../../data/hebergements.json";
import "./accommodation.css";

function AccommodationPage() {
  const [accommodations, setAccommodations] = useState([]);

  useEffect(() => {
    setAccommodations(accommodationsData);
  }, []);

  return (
    <div className="accommodation-page">
      {accommodations.map((accommodation) => (
        <DisplayAccommodation
          key={accommodation.id}
          accommodation={accommodation}
        />
      ))}
    </div>
  );
}

export default AccommodationPage;
