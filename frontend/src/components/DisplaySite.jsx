import React from "react";
import PropTypes from "prop-types";
import "../pages/site-page/site.css";

function DisplaySite({ site }) {
  return (
    <div className="display-site">
      <h3>{site.nom} </h3>
      <img src={site.image} alt="Site" className="site-image" />
      <p>{site.rue}</p>
      <p>
        0{site["code postal"]} {site.city}
      </p>
      <p>{site.description}</p>
      <p>Email : {site.email}</p>
      <p>Téléphone : {site.téléphone}</p>
      <p>
        Site Web : <a href={site["site internet"]}>{site["site internet"]}</a>
      </p>
    </div>
  );
}

DisplaySite.propTypes = {
  site: PropTypes.shape({
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

export default DisplaySite;
