import "./Activities.css";

function Activities() {
  return (
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
          <a href="/site"><img
            className="activities-categories-img"
            src="https://picsum.photos/200/150"
            alt="Activités sportives et de loisirs"
          /></a>
        </div>
        <div>
          <p>CULTURE</p>
          <a href="/site"><img
            className="activities-categories-img"
            src="https://picsum.photos/200/150"
            alt="Activités culturelles"
          /></a>
        </div>
        <div>
          <p>NATURE</p>
          <a href="/site"><img
            className="activities-categories-img"
            src="https://picsum.photos/200/150"
            alt="Activités en pleine nature"
          /></a>
        </div>
      </section>
      <section className="activity-ideas">
        <p>NOS SUGGESTIONS</p>
        <div className="activity-ideas">
        <a href="/site"><img
            className="activity-ideas-img"
            src="https://picsum.photos/150/100"
            alt="Idée d'activité"
          /></a>
          <a href="/site"><img
            className="activity-ideas-img"
            src="https://picsum.photos/150/100"
            alt="Idée d'activité"
          /></a>
          <a href="/site"><img
            className="activity-ideas-img"
            src="https://picsum.photos/150/100"
            alt="Idée d'activité"
          /></a>
        </div>
      </section>
    </div>
  );
}

export default Activities;
