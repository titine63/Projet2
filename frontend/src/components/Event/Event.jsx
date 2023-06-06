import "./event.css";

export default function Event() {
  return (
    <>
      <h2>EVENEMENT A SUIVRE</h2>
      <div className="events">
        <ul>
          <li className="even1">
            <h3>Visiter Vichy</h3>
            <br />
            <img
              className="img_even"
              src="https://woody.cloudly.space/app/uploads/vichy/2022/05/thumbs/promenade-et-plage--dsf3830-xavier-thomas-640x360.jpg"
              alt="aa"
            />

            <br />

            <input className="btn_even" type="button" value="J'Y VAIS" />
          </li>

          <li className="even2">
            <h3>Visiter Vichy</h3>
            <br />
            <img
              className="img_even"
              src="https://woody.cloudly.space/app/uploads/vichy/2022/05/thumbs/promenade-et-plage--dsf3830-xavier-thomas-640x360.jpg"
              alt="aa"
            />
            <br />
            <input className="btn_even" type="button" value="J'Y VAIS" />
          </li>

          <li className="even3">
            <h3>Visiter Vichy</h3>
            <br />
            <img
              className="img_even"
              src="https://woody.cloudly.space/app/uploads/vichy/2022/05/thumbs/promenade-et-plage--dsf3830-xavier-thomas-640x360.jpg"
              alt="aa"
            />
            <br />
            <input className="btn_even" type="button" value="J'Y VAIS" />
          </li>
        </ul>
      </div>
    </>
  );
}
