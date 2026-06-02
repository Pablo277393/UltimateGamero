import { useState, useEffect } from 'react';
import { Button } from '../components/ui/Button';
import { PlayerCard } from '../components/cards/PlayerCard';
import { futApi } from '../services/api';

export const Store = () => {
    const [openedPlayers, setOpenedPlayers] = useState(null);
    const [isOpening, setIsOpening] = useState(false);
    const [user, setUser] = useState(null);

    const fetchUser = async () => {
        try {
            const res = await futApi.getUser(1);
            setUser(res.data);
        } catch (error) {
            console.error('Failed to load user', error);
        }
    };

    useEffect(() => {
        fetchUser();
    }, []);

    const handleOpenPack = async () => {
        setIsOpening(true);
        try {
            const response = await futApi.openPack(1);
            setOpenedPlayers([response.data]); // Expecting 1 player returned directly due to backend change
            fetchUser();
        } catch (error) {
            console.error('Failed to open pack:', error);
            if (error.response?.data?.message) {
                alert(error.response.data.message);
            }
        } finally {
            setIsOpening(false);
        }
    };

    return (
        <div className="flex flex-col items-center w-full max-w-7xl mx-auto">
            <h1 className="text-5xl font-black text-fut-gold uppercase tracking-widest mb-12 drop-shadow-md">Store</h1>

            {!openedPlayers ? (
                <div className="bg-fut-card p-16 rounded-3xl border-2 border-fut-gold border-opacity-30 flex flex-col items-center shadow-[0_0_50px_rgba(255,215,0,0.1)] relative overflow-hidden group hover:border-opacity-100 transition-all duration-500 w-full max-w-2xl">
                    <div className="absolute inset-0 bg-gradient-to-br from-fut-gold to-transparent opacity-5 group-hover:opacity-20 transition-opacity duration-1000"></div>
                    <div className="w-64 h-80 bg-gradient-to-tr from-yellow-700 via-yellow-500 to-yellow-300 rounded-xl mb-10 transform group-hover:scale-110 group-hover:rotate-3 transition-all duration-700 shadow-[0_0_40px_rgba(255,215,0,0.5)] flex items-center justify-center border-4 border-yellow-200 cursor-pointer" onClick={!isOpening ? handleOpenPack : undefined}>
                        <div className="text-center">
                            <span className="block text-6xl font-black text-yellow-900 shadow-sm mb-2">FUT</span>
                            <span className="block text-3xl font-bold text-yellow-800">GOLD PACK</span>
                        </div>
                    </div>
                    <Button
                        variant="primary"
                        onClick={handleOpenPack}
                        disabled={isOpening}
                        className="text-2xl px-16 py-6 z-10 w-full shadow-2xl relative overflow-hidden"
                    >
                        {isOpening ? (
                            <span className="animate-pulse">OPENING PACK...</span>
                        ) : (
                            `OPEN PACK (${user?.packsOpenedToday ?? 0}/10)`
                        )}
                    </Button>
                </div>
            ) : (
                <div className="flex flex-col items-center w-full animate-fade-in relative z-10">
                    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[800px] h-[800px] bg-fut-gold opacity-10 rounded-full blur-[100px] -z-10 pointer-events-none"></div>
                    <h2 className="text-4xl font-black text-white mb-12 tracking-widest drop-shadow-lg">PACK RESULTS</h2>
                    <div className="flex flex-wrap justify-center gap-10 mb-16">
                        {openedPlayers.map((p, i) => (
                            <div key={i} className="animate-slide-up" style={{ animationDelay: `${i * 200}ms` }}>
                                <PlayerCard player={p} />
                            </div>
                        ))}
                    </div>
                    <div className="flex space-x-6">
                        <Button variant="primary" onClick={() => setOpenedPlayers(null)} className="px-10 py-4 text-xl">OPEN ANOTHER</Button>
                        <Button variant="secondary" className="px-10 py-4 text-xl">SEND TO CLUB</Button>
                    </div>
                </div>
            )}
        </div>
    );
};
