export const PlayerCard = ({ player }) => {
    return (
        <div className="relative w-64 h-96 bg-fut-card rounded-xl overflow-hidden border border-fut-gold shadow-[0_0_20px_rgba(255,215,0,0.15)] hover:shadow-[0_0_40px_rgba(255,215,0,0.5)] transition-all duration-500 transform hover:scale-105 hover:-translate-y-2 cursor-pointer group">
            {/* Card Background Glow */}
            <div className="absolute inset-0 bg-gradient-to-br from-fut-gold to-transparent opacity-10 group-hover:opacity-20 transition-opacity duration-500"></div>

            {/* Stats Top Left */}
            <div className="absolute top-4 left-4 text-center z-20">
                <div className="text-4xl font-black text-fut-gold drop-shadow-md">{player.rating || 99}</div>
                <div className="text-xl font-bold text-fut-accent drop-shadow-md">{player.position || 'ST'}</div>
            </div>

            {/* Dark Gradient Overlay for text readability */}
            <div className="absolute inset-0 bg-gradient-to-t from-fut-dark via-transparent to-transparent z-10" />

            <img
                src={player.imageUrl || "https://placehold.co/400x600/1a1a1a/ffd700?text=Player+Image"}
                alt={player.name}
                referrerPolicy="no-referrer"
                className="w-full h-full object-cover opacity-90 group-hover:scale-110 transition-transform duration-700"
            />

            {/* Bottom Stats Section */}
            <div className="absolute bottom-0 w-full p-4 bg-gradient-to-t from-black to-transparent z-20">
                <h3 className="text-2xl font-black text-center text-fut-gold uppercase tracking-wider mb-2 drop-shadow-lg">
                    {player.name || 'UNKNOWN'}
                </h3>
                <div className="w-full h-px bg-gradient-to-r from-transparent via-fut-gold to-transparent mb-2 opacity-50"></div>
                <div className="grid grid-cols-2 gap-x-4 gap-y-1 text-sm text-fut-accent font-bold px-2">
                    <div className="flex justify-between items-center"><span className="opacity-70">PAC</span><span className="text-white">{player.pace || 90}</span></div>
                    <div className="flex justify-between items-center"><span className="opacity-70">DRI</span><span className="text-white">{player.dribbling || 90}</span></div>
                    <div className="flex justify-between items-center"><span className="opacity-70">SHO</span><span className="text-white">{player.shooting || 90}</span></div>
                    <div className="flex justify-between items-center"><span className="opacity-70">DEF</span><span className="text-white">{player.defending || 90}</span></div>
                    <div className="flex justify-between items-center"><span className="opacity-70">PAS</span><span className="text-white">{player.passing || 90}</span></div>
                    <div className="flex justify-between items-center"><span className="opacity-70">PHY</span><span className="text-white">{player.physical || 90}</span></div>
                </div>
            </div>
        </div>
    );
};
