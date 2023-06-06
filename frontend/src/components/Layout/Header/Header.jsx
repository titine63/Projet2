import React from 'react';
import { Link } from 'react-router-dom';
import "./header.css";

export default function Header() {
  return (
    <header>
      <h1>Mon App</h1>
      <nav>
        <Link to="/">HOME</Link>
        <Link to="/accommodation">HEBERGEMENT</Link>
        <Link to="/restauration">RESTAURATION</Link>
        <Link to="/activities">A FAIRE</Link>
      </nav>
    </header>
  );
}
