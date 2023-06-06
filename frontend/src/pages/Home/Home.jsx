import Form from "@components/Form/Form";
import "./Home.css";
import Event from "@components/Event/Event";
import GoogleMap from "../../components/GoogleMap/GoogleMap";

export default function Home() {
  return (
    <>
      <div className="right">
        <div className="section-search">
          <h1>BIENVENUE DANS L'ALLIER</h1>
          <Form />
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
