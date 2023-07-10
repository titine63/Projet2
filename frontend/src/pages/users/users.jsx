/* eslint-disable no-restricted-syntax */
import "./users.css";
import React, { useState } from "react";
import axios from "axios";

function users() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  console.log("email, password :>> ", email, password);

  const handleUsernameChange = (event) => {
    setEmail(event.target.value);
  };

  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const result = await axios.post("http://localhost:5000/login", {
        email,
        password,
      });
      console.log("result :>> ", result);
      if (result.status === 200) {
        setIsLoggedIn(true);
      }
    } catch (error) {
      console.error("Erreur lors de la récupération des données:", error);
      // eslint-disable-next-line no-alert
      alert("Votre e-mail ou mot de passe n'est pas correct");
    }
  };

  return (
    <div>
      {isLoggedIn ? (
        <h2>Bienvenue, vous êtes connecté</h2>
      ) : (
        <form onSubmit={handleSubmit} className="form-connection">
          <h1>CONNECTEZ-VOUS</h1>
          <h2 className="h2-connection">E-mail : </h2>
          <input
            className="input-connection"
            type="email"
            value={email}
            onChange={handleUsernameChange}
            placeholder="Enter email"
          />
          <h2 className="h2-connection">Mot de passe : </h2>
          <input
            className="input-connection"
            type="password"
            value={password}
            onChange={handlePasswordChange}
            placeholder="Enter password"
          />

          <button type="submit" className="button-submit">
            Submit
          </button>
        </form>
      )}
    </div>
  );
}

export default users;
