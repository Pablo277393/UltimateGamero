import { Button } from '../components/ui/Button';
import { Link } from 'react-router-dom';

export const Home = () => {
    return (
        <div className="flex flex-col items-center justify-center min-h-[80vh] text-center space-y-8 animate-fade-in relative">

            <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[800px] h-[800px] bg-fut-gold opacity-5 rounded-full blur-[150px] -z-10 pointer-events-none"></div>

            <h1 className="text-7xl font-black italic tracking-tighter drop-shadow-2xl">
                WELCOME TO <span className="text-fut-gold">FUT</span>MANAGER
            </h1>
            <p className="text-2xl text-fut-accent max-w-3xl font-semibold leading-relaxed">
                Build your ultimate dream team. Open packs. Collect the best players in the world.
                Experience the thrill of modern football management.
            </p>
            <div className="flex space-x-6 mt-12">
                <Link to="/store">
                    <Button variant="primary" className="text-2xl px-12 py-5 shadow-2xl">OPEN PACKS</Button>
                </Link>
                <Link to="/club">
                    <Button variant="secondary" className="text-2xl px-12 py-5">MY CLUB</Button>
                </Link>
            </div>

            <div className="mt-20 w-full max-w-4xl bg-fut-card p-10 rounded-3xl border border-fut-gold border-opacity-30 flex items-center justify-between shadow-2xl relative overflow-hidden group">
                <div className="absolute inset-0 bg-gradient-to-r from-fut-gold to-transparent opacity-5 group-hover:opacity-10 transition-opacity"></div>
                <div className="text-left relative z-10">
                    <h3 className="text-3xl font-black text-fut-gold mb-3">Daily Packs Available!</h3>
                    <p className="text-xl text-fut-accent font-semibold">You have 10 packs waiting for you today. Don't miss out on legendary players.</p>
                </div>
                <Link to="/store" className="relative z-10">
                    <Button variant="primary" className="text-xl px-10 py-4 scale-100 group-hover:scale-105 transition-transform">Claim Now</Button>
                </Link>
            </div>
        </div>
    );
};
