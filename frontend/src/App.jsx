import { Routes, Route } from "react-router-dom";
import Layout from "@components/Layout/Layout";
import Restauration from "@pages/Restauration/Restauration";
import Home from "./pages/Home/Home";
import "./App.css";

export default function App() {
  return (
    <Layout>
      <main className=" wrappe">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/restauration" element={<Restauration />} />
        </Routes>
      </main>
    </Layout>
  );
}
