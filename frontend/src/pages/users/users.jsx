import "./users.css";

function users() {
  return (
    <form className="form-connection" action="connect">
      <h1>CONNECTEZ-VOUS</h1>

      <h2 className="h2-connection">E-mail : </h2>
      <input
        className="input-connection"
        type="email"
        placeholder="Enter email"
      />
      <h2 className="h2-connection">Mot de passe : </h2>
      <input
        className="input-connection"
        type="password"
        placeholder="Enter password"
      />

      <button type="submit" className="button-submit">
        Submit
      </button>
    </form>
  );
}

export default users;
