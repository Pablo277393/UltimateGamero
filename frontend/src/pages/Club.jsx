import { PlayerCard } from '../components/cards/PlayerCard';

export const Club = () => {
    // Dummy collection data
    const myPlayers = [
        { name: 'VINICIUS JR', rating: 91, position: 'LW', pace: 95, dribbling: 93, shooting: 86, defending: 34, passing: 83, physical: 72, imageUrl: 'https://placehold.co/400x600/1a1a1a/ffd700?text=Vini+Jr' },
        { name: 'BELLINGHAM', rating: 90, position: 'CM', pace: 84, dribbling: 88, shooting: 85, defending: 79, passing: 87, physical: 84, imageUrl: 'https://placehold.co/400x600/1a1a1a/ffd700?text=Jude' },
        { name: 'HAALAND', rating: 92, position: 'ST', pace: 93, dribbling: 82, shooting: 95, defending: 48, passing: 70, physical: 90, imageUrl: 'https://placehold.co/400x600/1a1a1a/ffd700?text=Haaland' }
    ];

    return (
        <div className="flex flex-col items-center w-full max-w-7xl mx-auto animate-fade-in relative z-10">
            <h1 className="text-5xl font-black text-fut-gold uppercase tracking-widest mb-4 drop-shadow-md">My Club</h1>
            <p className="text-xl text-fut-accent font-semibold mb-12">Manage your squad and view your collection.</p>

            <div className="w-full bg-fut-card p-12 rounded-3xl border border-fut-gold border-opacity-30 shadow-[0_0_40px_rgba(255,215,0,0.05)] overflow-hidden relative">
                <div className="absolute top-0 right-0 w-96 h-96 bg-fut-gold opacity-5 rounded-full blur-[80px] -z-10"></div>

                <h2 className="text-3xl font-black text-white mb-8 border-b-2 border-fut-gold pb-4 inline-block z-10 relative">SQUAD: ELITE FC</h2>

                {/* Active Squad (Dummy presentation) */}
                <div className="relative h-[500px] w-full flex items-center justify-center border-2 border-white border-opacity-5 rounded-2xl mb-16 bg-green-900 bg-opacity-10 shadow-inner overflow-hidden">
                    <p className="text-3xl font-black text-fut-accent opacity-20 absolute uppercase tracking-widest">Pitch View Demo</p>

                    <div className="absolute flex space-x-6 z-20">
                        {myPlayers.map((p, i) => (
                            <div key={i} className="transform scale-[0.8] hover:scale-95 transition-all duration-300 origin-bottom hover:z-30 cursor-pointer">
                                <PlayerCard player={p} />
                            </div>
                        ))}
                    </div>
                </div>

                <div className="flex items-center justify-between mb-8">
                    <h2 className="text-3xl font-black text-fut-gold z-10 relative">MY COLLECTION</h2>
                    <span className="text-fut-accent font-bold px-4 py-2 bg-fut-dark rounded-lg border border-fut-gold border-opacity-30 block">
                        TOTAL ITEMS: <span className="text-fut-gold">3</span>
                    </span>
                </div>

                <div className="flex flex-wrap gap-8 justify-start relative z-10">
                    {/* Collection items */}
                    {myPlayers.map((p, i) => (
                        <div key={i} className="transform scale-[0.85] hover:scale-95 transition-all duration-300 origin-top cursor-pointer">
                            <PlayerCard player={p} />
                        </div>
                    ))}
                    {/* Empty Slots */}
                    {[1, 2, 3, 4].map((_, idx) => (
                        <div key={`empty-${idx}`} className="w-[215px] h-[325px] rounded-xl border-2 border-dashed border-fut-gold border-opacity-20 flex flex-col items-center justify-center bg-fut-dark bg-opacity-50 hover:bg-opacity-80 transition-colors cursor-pointer">
                            <span className="text-fut-gold opacity-40 text-4xl mb-2">+</span>
                            <span className="text-fut-accent opacity-40 font-bold text-sm tracking-widest">SLOT</span>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    );
};
