import "./users.css";
import React, { useState } from "react";
import axios from "axios";

function users() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleUsernameChange = (event) => {
    setUsername(event.target.value);
  };

  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      await axios.post("https://localhost:5656/login", {
        username: users.username,
        password: users.password,
      });
    } catch (error) {
      console.error("Erreur lors de la récupération des données:", error);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="form-connection" action="connect">
      <h1>CONNECTEZ-VOUS</h1>

      <h2 className="h2-connection">E-mail : </h2>
      <input
        className="input-connection"
        type="email"
        value={username}
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
  );
}

export default users;
