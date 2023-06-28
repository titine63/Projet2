import GoogleMapReact from "google-map-react";
import "./GoogleMap.css";

export default function GoogleMap() {
  const points = [
    {
      id: 1,
      title: "Round Pond",
      lat: 46.12277083656663,
      lng: 3.4203466934519384,
    },
    {
      id: 2,
      title: "The Long Water",
      lat: 46.1251578440345,
      lng: 3.418726639396561,
    },
    {
      id: 3,
      title: "Centre Ville VICHY",
      lat: 46.12631041187808,
      lng: 3.425410703779473,
    },
  ];

  const getInfoWindowString = (place) => `
    <div>
      <div style="font-size: 16px;">
       id: ${place.id}
      </div>
      <div style="font-size: 14px;">
        <span style="color: grey;">
        title :${place.title}
        </span>
     
      </div>
     
    </div>`;

  const renderMarkers = (map, maps, point) => {
    const markers = [];
    const infowindows = [];

    point.forEach((place) => {
      markers.push(
        new maps.Marker({
          position: {
            lat: place.lat,
            lng: place.lng,
          },
          map,
        })
      );

      infowindows.push(
        new maps.InfoWindow({
          content: getInfoWindowString(place),
        })
      );
    });

    markers.forEach((marker, i) => {
      marker.addListener("click", () => {
        infowindows[i].open(map, marker);
      });
    });
  };

  return (
    <div className="lft">
      <div className="Carte">
        <h2 className="explorez">Explorez notre carte</h2>
        <GoogleMapReact
          bootstrapURLKeys={{
            key: "AIzaSyAVfKEtUOj7WvHZY6uCzJfPQuZSl9W2NxY",
          }}
          defaultCenter={{ lat: 46.12277083656663, lng: 3.4203466934519384 }}
          defaultZoom={12}
          yesIWantToUseGoogleMapApiInternals
          onGoogleApiLoaded={({ map, maps }) =>
            renderMarkers(map, maps, points)
          }
        />
      </div>
      <div className="filtre">
        <h2 className="type">Type d'établissement</h2>
        <ul>
          <button type="button" className="type1">
            Restauration
          </button>
          <button type="button" className="type2">
            Hôtels
          </button>
          <button type="button" className="type3">
            Bars
          </button>
          <button type="button" className="type4">
            Snacks
          </button>
        </ul>
      </div>
    </div>
  );
}
