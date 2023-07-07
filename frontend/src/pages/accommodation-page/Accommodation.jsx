import React, { useState, useEffect } from "react";
import axios from "axios";
import DisplayAccommodation from "../../components/DisplayAccommodation";

import "./accommodation.css";

function AccommodationPage() {
  const [accommodations, setAccommodations] = useState([]);

  useEffect(() => {
    axios
      .get("http://localhost:5656/accommodations")
      .then((res) => setAccommodations(res.data))
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
