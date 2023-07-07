import React from "react";
import { Link } from "react-router-dom";
import "./header.css";
import logo from "./logo4.png";

export default function Header() {
  return (
    <header>
      <div className="logo-container">
        <img src={logo} alt="Logo AlliEZ" className="logo-image" />
        <h1 className="logo-text">AlliEZ</h1>
      </div>
      <nav>
        <Link to="/">HOME</Link>
        <Link to="/accommodations">HEBERGEMENT</Link>
        <Link to="/restauration">RESTAURATION</Link>
        <Link to="/activities">ACTIVITES</Link>
        <Link to="/users">SE CONNECTER</Link>
      </nav>
    </header>
  );
}
