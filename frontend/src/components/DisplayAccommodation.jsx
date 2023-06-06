import React from "react";
import PropTypes from "prop-types";
import "../pages/accommodation-page/accommodation.css";

function DisplayAccommodation({ accommodation }) {
  return (
    <div className="display-accommodation">
      <h3>{accommodation.nom} </h3>
      <img
        src={accommodation.image}
        alt="Hébergement"
        className="accommodation-image"
      />
      <p>{accommodation.rue}</p>
      <p>
        0{accommodation["code postal"]} {accommodation.city}
      </p>
      <p>{accommodation.description}</p>
      <p>Email : {accommodation.email}</p>
      <p>Téléphone : {accommodation.téléphone}</p>
      <p>
        Site Web :{" "}
        <a href={accommodation["site internet"]}>
          {accommodation["site internet"]}
        </a>
      </p>
    </div>
  );
}

DisplayAccommodation.propTypes = {
  accommodation: PropTypes.shape({
    nom: PropTypes.string.isRequired,
    image: PropTypes.string.isRequired,
    rue: PropTypes.string.isRequired,
    "code postal": PropTypes.string.isRequired,
    city: PropTypes.string.isRequired,
    description: PropTypes.string.isRequired,
    email: PropTypes.string.isRequired,
    téléphone: PropTypes.string.isRequired,
    "site internet": PropTypes.string.isRequired,
  }).isRequired,
};

export default DisplayAccommodation;
