import React from "react";
import PropTypes from "prop-types";
import "../pages/restauration-page/restauration.css";
import {
  faEnvelope,
  faPhone,
  faGlobe,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

function DisplayRestauration({ restauration }) {
  return (
    <div className="display-restauration">
      <h3>{restauration.name} </h3>
      <img
        src={restauration.image}
        alt="Restauration"
        className="restauration-image"
      />
      <p>{restauration.street}</p>
      <p>
        {restauration.postal_code} {restauration.city}
      </p>
      <p>{restauration.description}</p>
      <p>
        <FontAwesomeIcon icon={faEnvelope} /> Email : {restauration.email}
      </p>
      <p>
        <FontAwesomeIcon icon={faPhone} /> Téléphone :{" "}
        {restauration.phone_number}
      </p>
      <p>
        <FontAwesomeIcon icon={faGlobe} /> Site Web :&nbsp;
        <a href={restauration.website}>{restauration.website}</a>
      </p>
    </div>
  );
}

DisplayRestauration.propTypes = {
  restauration: PropTypes.shape({
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

export default DisplayRestauration;
