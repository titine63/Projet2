import React from "react";
import { useLocation } from "react-router-dom";

export default function EventDetails() {
  const { event } = useLocation().state;

  if (!event) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h1>Event Details</h1>
      <p>
        <strong>Name:</strong> {event.name}
      </p>
      <p>
        <strong>Date:</strong> {event.date}
      </p>
    </div>
  );
}
