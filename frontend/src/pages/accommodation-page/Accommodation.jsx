import React, { useState, useEffect } from "react";
import DisplayAccommodation from "../../components/DisplayAccommodation";

import "./accommodation.css";

function AccommodationPage() {
  const [accommodations, setAccommodations] = useState([]);

  useEffect(() => {
    fetch("http://localhost:5000/hebergements")
      .then((res) => res.json())
      .then((res) => setAccommodations(res))
      .catch((err) => console.info("err :>> ", err));
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
