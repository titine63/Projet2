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
      <h3>{site.name} </h3>
      <img src={site.image} alt="Site" className="site-image" />
      <p>{site.street}</p>
      <p>
        {site.postal_code} {site.city}
      </p>
      <p>{site.description}</p>
      <p>
        <FontAwesomeIcon icon={faEnvelope} /> Email : {site.email}
      </p>
      <p>
        <FontAwesomeIcon icon={faPhone} /> Téléphone : {site.phone_number}
      </p>
      <p>
        <FontAwesomeIcon icon={faGlobe} /> Site Web :&nbsp;
        <a href={site.website}>{site.website}</a>
      </p>
    </div>
  );
}

DisplaySite.propTypes = {
  site: PropTypes.shape({
    name: PropTypes.string.isRequired,
    image: PropTypes.string.isRequired,
    street: PropTypes.string.isRequired,
    postal_code: PropTypes.string.isRequired,
    city: PropTypes.string.isRequired,
    description: PropTypes.string.isRequired,
    email: PropTypes.string.isRequired,
    phone_number: PropTypes.string.isRequired,
    website: PropTypes.string.isRequired,
    category_id: PropTypes.number,
  }).isRequired,
};

export default DisplaySite;
