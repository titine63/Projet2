import "./event.css";

export default function Event() {
  return (
    <>
      <h2>EVENEMENT A SUIVRE</h2>

      <ul className="events">
        <li className="event1">
          <h3>Histoire d'eaux, Vichy : 2 000 ans de thermalisme</h3>
          <br />
          <img
            className="img_event"
            src="https://static.apidae-tourisme.com/filestore/objets-touristiques/images/185/202/12962489.jpg"
            alt="aa"
          />

          <br />

          <input className="btn_event" type="button" value="J'Y VAIS" />
        </li>

        <li className="event2">
          <h3>Second Empire, Belle Époque, Âge d'Or de Vichy</h3>
          <br />
          <img
            className="img_event"
            src="https://static.apidae-tourisme.com/filestore/objets-touristiques/images/15/93/12475663.jpg"
            alt="aa"
          />
          <br />
          <input className="btn_event" type="button" value="J'Y VAIS" />
        </li>

        <li className="event3">
          <h3>Vichy, Capitale de l'État français 40/44</h3>
          <br />
          <img
            className="img_event"
            src="https://static.apidae-tourisme.com/filestore/objets-touristiques/images/130/215/7329666.jpg"
            alt="aa"
          />
          <br />
          <input className="btn_event" type="button" value="J'Y VAIS" />
        </li>
      </ul>
    </>
  );
}
