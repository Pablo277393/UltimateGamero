import { useState, useEffect } from 'react';
import { PlayerCard } from '../components/cards/PlayerCard';
import { futApi } from '../services/api';

export const Club = () => {
    const [myCollection, setMyCollection] = useState([]);
    const [myActiveSquad, setMyActiveSquad] = useState([]);
    const [teamId, setTeamId] = useState(null);

    useEffect(() => {
        loadData();
    }, []);

    const loadData = async () => {
        try {
            // Load user 1 collection
            const userRes = await futApi.getUser(1);
            setMyCollection(userRes.data?.collection || []);

            // Load user 1 team
            const teamRes = await futApi.getTeam(1);
            setTeamId(teamRes.data?.id);
            setMyActiveSquad(teamRes.data?.activePlayers || []);
        } catch (error) {
            console.error("Error loading club data", error);
        }
    };

    const handleAddToSquad = async (playerId) => {
        if (!teamId) return;
        // If player is already in squad, don't do anything or remove them?
        // Let's implement it so clicking in collection adds, clicking in formation removes.
        if (myActiveSquad.some(p => p.id === playerId)) {
            handleRemoveFromSquad(playerId);
            return;
        }

        try {
            await futApi.addPlayerToTeam(teamId, playerId);
            await loadData();
        } catch (error) {
            console.error("Error adding player to team", error);
            alert("Could not add player to team (Max 11 players).");
        }
    };

    const handleRemoveFromSquad = async (playerId) => {
        if (!teamId) return;
        try {
            await futApi.removePlayerFromTeam(teamId, playerId);
            await loadData();
        } catch (error) {
            console.error("Error removing player from team", error);
        }
    };

    return (
        <div className="flex flex-col items-center w-full max-w-7xl mx-auto animate-fade-in relative z-10">
            <h1 className="text-5xl font-black text-fut-gold uppercase tracking-widest mb-4 drop-shadow-md">My Club</h1>
            <p className="text-xl text-fut-accent font-semibold mb-12">Manage your squad and view your collection.</p>

            <div className="w-full bg-fut-card p-12 rounded-3xl border border-fut-gold border-opacity-30 shadow-[0_0_40px_rgba(255,215,0,0.05)] overflow-hidden relative">
                <div className="absolute top-0 right-0 w-96 h-96 bg-fut-gold opacity-5 rounded-full blur-[80px] -z-10"></div>

                <h2 className="text-3xl font-black text-white mb-8 border-b-2 border-fut-gold pb-4 inline-block z-10 relative">SQUAD: ELITE FC</h2>

                {/* Active Squad (Tactical 1-2-1-1 Formation) */}
                <div className="relative h-[1000px] w-full border-2 border-white border-opacity-10 rounded-3xl mb-16 bg-gradient-to-b from-green-800 to-green-950 shadow-2xl overflow-hidden p-4">
                    {/* Pitch markings */}
                    <div className="absolute inset-4 border-2 border-white border-opacity-10 rounded-[2rem] pointer-events-none"></div>
                    <div className="absolute top-4 left-1/2 -translate-x-1/2 w-1/3 h-40 border-b-2 border-x-2 border-white border-opacity-10 pointer-events-none"></div>
                    <div className="absolute bottom-4 left-1/2 -translate-x-1/2 w-1/3 h-40 border-t-2 border-x-2 border-white border-opacity-10 pointer-events-none"></div>
                    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-64 h-64 border-2 border-white border-opacity-10 rounded-full pointer-events-none"></div>
                    <div className="absolute top-1/2 left-4 right-4 h-px bg-white bg-opacity-10 pointer-events-none"></div>

                    {/* Positions */}
                    {/* Forward (1) */}
                    <div className="absolute top-[2%] left-1/2 -translate-x-1/2 z-20 flex flex-col items-center">
                        <span className="text-xs font-black text-white bg-red-600 px-3 py-1 rounded-full mb-2 shadow-lg uppercase tracking-wider">DEL</span>
                        <div
                            className="transform scale-[0.5] hover:scale-[0.55] transition-all duration-300 origin-top cursor-pointer"
                            onClick={() => myActiveSquad[4] && handleRemoveFromSquad(myActiveSquad[4].id)}
                        >
                            {myActiveSquad[4] ? <PlayerCard player={myActiveSquad[4]} /> : <div className="w-64 h-96 border-2 border-dashed border-white border-opacity-20 rounded-xl flex items-center justify-center text-white opacity-20 font-black">FWD SLOT</div>}
                        </div>
                    </div>

                    {/* Midfielder (1) */}
                    <div className="absolute top-[27%] left-1/2 -translate-x-1/2 z-20 flex flex-col items-center">
                        <span className="text-xs font-black text-white bg-blue-600 px-3 py-1 rounded-full mb-2 shadow-lg uppercase tracking-wider">MED</span>
                        <div
                            className="transform scale-[0.5] hover:scale-[0.55] transition-all duration-300 origin-top cursor-pointer"
                            onClick={() => myActiveSquad[3] && handleRemoveFromSquad(myActiveSquad[3].id)}
                        >
                            {myActiveSquad[3] ? <PlayerCard player={myActiveSquad[3]} /> : <div className="w-64 h-96 border-2 border-dashed border-white border-opacity-20 rounded-xl flex items-center justify-center text-white opacity-20 font-black">MID SLOT</div>}
                        </div>
                    </div>

                    {/* Defenders (2) */}
                    <div className="absolute top-[52%] left-[25%] -translate-x-1/2 z-20 flex flex-col items-center">
                        <span className="text-xs font-black text-white bg-green-600 px-3 py-1 rounded-full mb-2 shadow-lg uppercase tracking-wider">DEF</span>
                        <div
                            className="transform scale-[0.5] hover:scale-[0.55] transition-all duration-300 origin-top cursor-pointer"
                            onClick={() => myActiveSquad[1] && handleRemoveFromSquad(myActiveSquad[1].id)}
                        >
                            {myActiveSquad[1] ? <PlayerCard player={myActiveSquad[1]} /> : <div className="w-64 h-96 border-2 border-dashed border-white border-opacity-20 rounded-xl flex items-center justify-center text-white opacity-20 font-black">DEF SLOT</div>}
                        </div>
                    </div>
                    <div className="absolute top-[52%] left-[75%] -translate-x-1/2 z-20 flex flex-col items-center">
                        <span className="text-xs font-black text-white bg-green-600 px-3 py-1 rounded-full mb-2 shadow-lg uppercase tracking-wider">DEF</span>
                        <div
                            className="transform scale-[0.5] hover:scale-[0.55] transition-all duration-300 origin-top cursor-pointer"
                            onClick={() => myActiveSquad[2] && handleRemoveFromSquad(myActiveSquad[2].id)}
                        >
                            {myActiveSquad[2] ? <PlayerCard player={myActiveSquad[2]} /> : <div className="w-64 h-96 border-2 border-dashed border-white border-opacity-20 rounded-xl flex items-center justify-center text-white opacity-20 font-black">DEF SLOT</div>}
                        </div>
                    </div>

                    {/* Goalkeeper (1) */}
                    <div className="absolute bottom-[2%] left-1/2 -translate-x-1/2 z-20 flex flex-col items-center">
                        <span className="text-xs font-black text-white bg-yellow-600 px-3 py-1 rounded-full mb-2 shadow-lg uppercase tracking-wider">POR</span>
                        <div
                            className="transform scale-[0.5] hover:scale-[0.55] transition-all duration-300 origin-top cursor-pointer"
                            onClick={() => myActiveSquad[0] && handleRemoveFromSquad(myActiveSquad[0].id)}
                        >
                            {myActiveSquad[0] ? <PlayerCard player={myActiveSquad[0]} /> : <div className="w-64 h-96 border-2 border-dashed border-white border-opacity-20 rounded-xl flex items-center justify-center text-white opacity-20 font-black">GK SLOT</div>}
                        </div>
                    </div>
                </div>

                <div className="flex items-center justify-between mb-8">
                    <h2 className="text-3xl font-black text-fut-gold z-10 relative">MY COLLECTION</h2>
                    <span className="text-fut-accent font-bold px-4 py-2 bg-fut-dark rounded-lg border border-fut-gold border-opacity-30 block">
                        TOTAL ITEMS: <span className="text-fut-gold">{myCollection.length}</span>
                    </span>
                </div>

                <div className="flex flex-wrap gap-8 justify-start relative z-10">
                    {/* Collection items */}
                    {myCollection.map((p, i) => {
                        const inSquad = myActiveSquad.some(active => active.id === p.id);
                        return (
                            <div
                                key={i}
                                onClick={() => handleAddToSquad(p.id)}
                                className={`relative transform scale-[0.85] hover:scale-95 transition-all duration-300 origin-top cursor-pointer ${inSquad ? 'opacity-50 grayscale-[0.5]' : ''}`}
                            >
                                {inSquad && (
                                    <div className="absolute top-0 left-0 w-full h-full border-4 border-fut-gold border-opacity-50 rounded-xl z-20 pointer-events-none flex items-center justify-center">
                                        <span className="bg-fut-gold text-fut-dark px-3 py-1 rounded-full font-black text-xs shadow-lg uppercase">IN SQUAD</span>
                                    </div>
                                )}
                                <PlayerCard player={p} />
                            </div>
                        );
                    })}
                    {/* Empty Slots placeholder */}
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
