/* eslint-disable prettier/prettier */
import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import DisplaySite from "../../components/DisplaySite";
import "./site.css";

function SitePageByCategory() {
  const [sites, setSites] = useState([]);
  // eslint-disable-next-line camelcase
  const { category_id } = useParams();

  useEffect(() => {
    // eslint-disable-next-line camelcase
    fetch(`http://localhost:5000/sites/category/${category_id}`)
      .then((res) => res.json())
      .then((data) => setSites(data));
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

export default SitePageByCategory;
