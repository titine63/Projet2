/* eslint-disable import/no-unresolved */
import React, { useState } from "react";
import axios from "axios";
import Form from "@components/Form/Form";
import "./Home.css";
import Event from "@components/Event/Event";
import GoogleMap from "../../components/GoogleMap/GoogleMap";

export default function Home() {
  const [searchResults, setSearchResults] = useState([]);

  const handleSearch = async (searchTerm) => {
    try {
      const response = await axios.get(
        `http://localhost:5656/search?term=${searchTerm}`
      );
      setSearchResults(response.data);
    } catch (error) {
      console.error("Error searching:", error);
    }
  };
  return (
    <>
      <div className="right">
        <div className="section-search">
          <h1>BIENVENUE DANS L'ALLIER</h1>
          <Form onSearch={handleSearch} />
          <ul>
            {searchResults.map((result) => (
              <li key={result.id}>{result.name}</li>
            ))}
          </ul>
        </div>
        <div className="section-event">
          <Event />
        </div>
      </div>
      <div className="left">
        <div className="section-map">
          <GoogleMap />
        </div>
      </div>
    </>
  );
}
