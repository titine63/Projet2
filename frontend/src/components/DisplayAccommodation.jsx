/* eslint-disable prettier/prettier */
import React from "react";
import PropTypes from "prop-types";
import "../pages/accommodation-page/accommodation.css";
import {
  faEnvelope,
  faPhone,
  faGlobe,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

function DisplayAccommodation({ accommodation }) {
  return (
    <div className="display-accommodation">
      <h3>{accommodation.name} </h3>
      <img
        src={accommodation.image}
        alt="Hébergement"
        className="accommodation-image"
      />
      <p>{accommodation.street}</p>
      <p>
        0{accommodation.postal_code} {accommodation.city}
      </p>
      <p>{accommodation.description}</p>
      <p>
        <FontAwesomeIcon icon={faEnvelope} /> Email : {accommodation.email}
      </p>
      <p>
        <FontAwesomeIcon icon={faPhone} /> Téléphone :{" "}
        {accommodation.phone_number}
        {accommodation.phone_number}
      </p>
      <p>
        <FontAwesomeIcon icon={faGlobe} /> Site Web :&nbsp;
        <a href={accommodation.website}>{accommodation.website}</a>
      </p>
    </div>
  );
}

DisplayAccommodation.propTypes = {
  accommodation: PropTypes.shape({
    name: PropTypes.string.isRequired,
    image: PropTypes.string.isRequired,
    street: PropTypes.string.isRequired,
    postal_code: PropTypes.string.isRequired,
    city: PropTypes.string.isRequired,
    description: PropTypes.string.isRequired,
    email: PropTypes.string.isRequired,
    phone_number: PropTypes.string.isRequired,
    website: PropTypes.string.isRequired,
  }).isRequired,
};

export default DisplayAccommodation;
