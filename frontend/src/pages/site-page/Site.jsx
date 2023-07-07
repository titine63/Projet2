import React, { useState, useEffect } from "react";
import DisplaySite from "../../components/DisplaySite";
import "./site.css";

function SitePage() {
  const [sites, setSites] = useState([]);
  // console.log(sites);

  useEffect(() => {
    fetch("http://localhost:5000/sites")
      .then((res) => res.json())
      .then((data) => console.info(data) || setSites(data))
      .catch((error) => console.warn(error));
  }, []);

  return (
    <div>
      <div className="site-page">
        {sites?.map((site) => (
          <DisplaySite key={site.id} site={site} />
        ))}
      </div>
    </div>
  );
}

export default SitePage;
