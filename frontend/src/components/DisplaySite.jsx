import React from "react";
import PropTypes from "prop-types";
import "../pages/site-page/site.css";
import {
  faEnvelope,
  faPhone,
  faGlobe,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

function DisplaySite({ site }) {
  return (
    <div className="display-site">
      <h3>{site.nom} </h3>
      <h4>{site.catégorie}</h4>
      <img src={site.image} alt="Site" className="site-image" />
      <p>{site.rue}</p>
      <p>
        0{site["code postal"]} {site.city}
      </p>
      <p>{site.description}</p>
      <p>
        <FontAwesomeIcon icon={faEnvelope} /> Email : {site.email}
      </p>
      <p>
        <FontAwesomeIcon icon={faPhone} /> Téléphone : {site.téléphone}
      </p>
      <p>
        <FontAwesomeIcon icon={faGlobe} /> Site Web :&nbsp;
        <a href={site["site internet"]}>{site["site internet"]}</a>
      </p>
    </div>
  );
}

DisplaySite.propTypes = {
  site: PropTypes.shape({
    nom: PropTypes.string.isRequired,
    catégorie: PropTypes.string.isRequired,
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

export default DisplaySite;
