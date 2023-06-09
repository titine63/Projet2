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
      <h3>{restauration.nom} </h3>
      <img
        src={restauration.image}
        alt="Hébergement"
        className="restauration-image"
      />
      <p>{restauration.rue}</p>
      <p>
        0{restauration["code postal"]} {restauration.city}
      </p>
      <p>{restauration.description}</p>
      <p>
        <FontAwesomeIcon icon={faEnvelope} /> Email : {restauration.email}
      </p>
      <p>
        <FontAwesomeIcon icon={faPhone} /> Téléphone : {restauration.téléphone}
      </p>
      <p>
        <FontAwesomeIcon icon={faGlobe} /> Site Web :&nbsp;
        <a href={restauration["site internet"]}>
          {restauration["site internet"]}
        </a>
      </p>
    </div>
  );
}

DisplayRestauration.propTypes = {
  restauration: PropTypes.shape({
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

export default DisplayRestauration;
