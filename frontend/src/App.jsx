import { Routes, Route } from 'react-router-dom';
import { Navbar } from './components/Navbar';
import { Home } from './pages/Home';
import { Store } from './pages/Store';
import { Club } from './pages/Club';

function App() {
  return (
    <div className="min-h-screen bg-fut-dark text-white font-sans w-full">
      <Navbar />
      <main className="pt-24 pb-12 px-8 min-h-screen">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/store" element={<Store />} />
          <Route path="/club" element={<Club />} />
        </Routes>
      </main>
    </div>
  );
}

export default App;
