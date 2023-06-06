import { Routes, Route } from "react-router-dom";
import Layout from "@components/Layout/Layout";
import RestaurationPage from "@pages/restauration-page/Restauration";

import Home from "./pages/Home/Home";
import AccommodationPage from "./pages/accommodation-page/Accommodation";

export default function App() {
  return (
    <Layout>
      <main className=" wrappe">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/restauration" element={<RestaurationPage />} />
          <Route path="/accommodation" element={<AccommodationPage />} />
        </Routes>
      </main>
    </Layout>
  );
}
