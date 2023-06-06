import "./Activities.css";
import Layout from "@components/Layout/Layout";

function Activities() {
  return (
    <>
    <div className="activities-mainpage">
      <section className="activities-presentation">
        <h2>ACTIVITÉS DANS L'ALLIER</h2>
        <p>
          Pour profiter au mieux de votre séjour, venez découvrir les
          différentes activités (sportives, culturelles et de loisirs...)
        </p>
      </section>
      <section className="activities-categories">
        <div>
          <p>SPORT & LOISIRS</p>
          <img className="activities-categories-img" src="https://picsum.photos/200/150" alt="Activités sportives et de loisirs" href="" />
        </div>
        <div>
          <p>CULTURE</p>
          <img className="activities-categories-img" src="https://picsum.photos/200/150" alt="Activités culturelles" href="" />
        </div>
        <div>
          <p>NATURE</p>
          <img className="activities-categories-img" src="https://picsum.photos/200/150" alt="Activités en pleine nature" href="" />
        </div>
      </section>
      <section className="activity-ideas">
        <p>NOS SUGGESTIONS</p>
        <div className="activity-ideas">
            <img className="activity-ideas-img" src="https://picsum.photos/150/100" alt="Idée d'activité" />
            <img className="activity-ideas-img" src="https://picsum.photos/150/100" alt="Idée d'activité" />
            <img className="activity-ideas-img" src="https://picsum.photos/150/100" alt="Idée d'activité" />
        </div>
      </section>
      </div>
    </>
  );
}

export default Activities;
