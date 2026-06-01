import { Link } from 'react-router-dom';

export const Navbar = () => {
    return (
        <nav className="flex items-center justify-between px-8 py-4 bg-fut-dark border-b border-fut-gold shadow-[0_4px_20px_rgba(255,215,0,0.1)] w-full fixed top-0 z-50">
            <Link to="/" className="flex items-center space-x-2">
                <div className="text-3xl font-black italic tracking-tighter">
                    <span className="text-fut-gold">FUT</span>
                    <span className="text-white">MANAGER</span>
                </div>
            </Link>
            <div className="flex space-x-8 text-sm font-bold text-white uppercase tracking-widest">
                <Link to="/" className="hover:text-fut-gold transition-colors">Home</Link>
                <Link to="/store" className="hover:text-fut-gold transition-colors">Store</Link>
                <Link to="/club" className="hover:text-fut-gold transition-colors">Club</Link>
            </div>
            <div className="text-fut-accent text-sm font-semibold flex items-center space-x-4">
                <span>User: <span className="text-fut-gold">Guest</span></span>
                <div className="w-8 h-8 rounded-full bg-gradient-to-br from-fut-gold to-yellow-600 flex items-center justify-center text-fut-dark font-bold">
                    G
                </div>
            </div>
        </nav>
    );
};
