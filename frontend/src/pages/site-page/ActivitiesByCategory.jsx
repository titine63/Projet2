/* eslint-disable prettier/prettier */
import React, { useState, useEffect } from "react";
import DisplaySite from "../../components/DisplaySite";
import "./site.css";

function SitePageByCategory() {
  const [sites, setSites] = useState([]);

  useEffect(() => {
    fetch("http://localhost:5000/sites/category/:category_id")
      .then((res) => res.json)
      .then((data) => setSites(data.sites));
  }, []);

  return (
    <div>
      <div className="site-page">
        {sites?.map((site) => (
          <DisplaySite key={site.category_id} site={site} />
        ))}
      </div>
    </div>
  );
}

export default SitePageByCategory;
