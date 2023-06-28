import React from "react";
import { Route, Routes } from "react-router-dom";
import Activities from "./pages/Activities/Activities";
import "./App.css";
import Layout from "./components/Layout/Layout";
import SitePage from "./pages/site-page/Site";
import RestaurationPage from "./pages/restauration-page/Restauration";
import Home from "./pages/Home/Home";
import AccommodationPage from "./pages/accommodation-page/Accommodation";

function App() {
  return (
    <Layout>
      <main className="wrapper app-container">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/accommodation" element={<AccommodationPage />} />
          <Route path="/restauration" element={<RestaurationPage />} />
          <Route path="/activities" element={<Activities />} />
          <Route path="/site" element={<SitePage />} />
        </Routes>
      </main>
    </Layout>
  );
}

export default App;
