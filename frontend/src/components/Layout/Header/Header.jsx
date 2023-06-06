import React from "react";
import { Link } from "react-router-dom";
import "./header.css";

export default function Header() {
  return (
    <header>
      <h1 className="logo">AlliEZ</h1>
      <nav>
        <Link to="/">Home</Link>
        <Link to="/accommodation">Hébergement</Link>
        <Link to="/restauration">Restauration</Link>
        <Link to="/a faire">A faire</Link>
      </nav>
    </header>
  );
}
