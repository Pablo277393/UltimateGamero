import axios from 'axios';

const api = axios.create({
    baseURL: 'http://localhost:8099/api',
    headers: {
        'Content-Type': 'application/json'
    }
});

export const futApi = {
    // Users
    createUser: (user) => api.post('/users', user),
    getUser: (id) => api.get(`/users/${id}`),

    // Players
    getPlayers: () => api.get('/players'),

    // Packs
    openPack: (userId) => api.post(`/packs/open/${userId}`),

    // Teams
    createTeam: (userId, name) => api.post('/teams', { userId, name }),
    getTeam: (userId) => api.get(`/teams/user/${userId}`),
    addPlayerToTeam: (teamId, playerId) => api.post(`/teams/${teamId}/players/${playerId}`),
    removePlayerFromTeam: (teamId, playerId) => api.delete(`/teams/${teamId}/players/${playerId}`)
};
