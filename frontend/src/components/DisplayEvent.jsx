/* eslint-disable prettier/prettier */
import React from "react";
import PropTypes from "prop-types";
import "../pages/accommodation-page/accommodation.css";

function DisplayEvent({ event }) {
  return (
    <div className="display-event">
      <h3>{event.name} </h3>
      <img src={event.image} alt="Event" className="event-image" />
      <p>{event.date}</p>
    </div>
  );
}

DisplayEvent.propTypes = {
  event: PropTypes.shape({
    name: PropTypes.string.isRequired,
    image: PropTypes.string.isRequired,
    date: PropTypes.string.isRequired,
  }).isRequired,
};

export default DisplayEvent;
