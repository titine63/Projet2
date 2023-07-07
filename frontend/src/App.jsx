import React from "react";
import "./App.css";
import { Route, Routes } from "react-router-dom";
import Activities from "@pages/Activities/Activities";
import Layout from "@components/Layout/Layout";
import SitePage from "@pages/site-page/Site";
import RestaurationPage from "@pages/restauration-page/Restauration";
import Home from "@pages/Home/Home";
import AccommodationPage from "@pages/accommodation-page/Accommodation";
import Users from "@pages/users/users";
import SitePageByCategory from "./pages/site-page/ActivitiesByCategory";

function App() {
  return (
    <Layout>
      <main className="wrapper app-container">
        <Routes>
          <Route path="/users" element={<Users />} />
          <Route path="/" element={<Home />} />
          <Route path="/accommodations" element={<AccommodationPage />} />
          <Route path="/restauration" element={<RestaurationPage />} />
          <Route path="/activities" element={<Activities />} />
          <Route path="/sites" element={<SitePage />} />
          <Route
            path="/sites/category/:category_id"
            element={<SitePageByCategory />}
          />
        </Routes>
      </main>
    </Layout>
  );
}

export default App;
