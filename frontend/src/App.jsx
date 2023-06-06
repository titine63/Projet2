import Activities from "@pages/Activities/Activities";

import "./App.css";
import Layout from "@components/Layout/Layout";

function App() {
  return (
    <Layout>
      <main className=" wrappe">
        <Activities />
      </main>
      {/* <main className="wrapper app-container">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/accommodation" element={<AccommodationPage />} />
          <Route path="/activities" element={<Activities />} />
          <Route path="/site" element={<SitePage />} />
        </Routes>
      </main> */}
    </Layout>
  );
}

export default App;
