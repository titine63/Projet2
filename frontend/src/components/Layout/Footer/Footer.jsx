import { Link } from "react-router-dom";
import "./footer.css";

export default function Footer() {
  return (
    <footer>
      <div className="top">
        <span className="facebook">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
            <path d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z" />
          </svg>
        </span>
        <div className="instagram" />
        <span className="twitter">
          <svg
            className="twitter"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 512 512"
          >
            <path d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z" />
          </svg>
        </span>
      </div>
      <div className="middle">
        <section>
          <h3>Evénement</h3>
          <div className="link">
            <Link to="/evenement">Evénement</Link>
            <Link to="/date">Dates à garder</Link>
          </div>
        </section>
        <section>
          <h3>Liens Utiles</h3>
          <div className="link">
            <Link to="/cgu">CGU</Link>
            <Link to="/mentions">Mentions légales</Link>
          </div>
        </section>

        <section>
          <h3>Newsletter</h3>
          <div className="link-news">
            <Link to="/nouvelles">
              Recevez les dernières nouvelles de l'Allier !
            </Link>

            <div className="form-news">
              <input
                type="email"
                name="newsletter"
                placeholder="Saisir mon adresse mail"
              />

              <button type="button" className="form-btn">
                Envoyer
              </button>
            </div>
          </div>
        </section>
      </div>
      <div className="bottom">
        <p>Copyright &copy; 2023 Tout droits réservés</p>
      </div>
    </footer>
  );
}
