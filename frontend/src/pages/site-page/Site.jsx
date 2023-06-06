import React, { useState, useEffect } from "react";
import DisplaySite from "@components/DisplaySite";
import sitesData from "../../data/sites.json";
import "./site.css";

function SitePage() {
  const [sites, setSites] = useState([]);

  useEffect(() => {
    setSites(sitesData);
  }, []);

  return (
    <div>
      <div className="site-page">
        {sites.map((site) => (
          <DisplaySite key={site.id} site={site} />
        ))}
      </div>
    </div>
  );
}

export default SitePage;
