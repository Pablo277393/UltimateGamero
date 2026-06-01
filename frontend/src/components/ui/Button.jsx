export const Button = ({ children, onClick, variant = 'primary', className = '' }) => {
    const baseStyle = "px-6 py-3 font-bold rounded-lg transition-all duration-300 uppercase tracking-wider disabled:opacity-50 disabled:cursor-not-allowed";
    const variants = {
        primary: "bg-fut-gold text-fut-dark hover:bg-yellow-400 shadow-[0_0_15px_rgba(255,215,0,0.5)]",
        secondary: "bg-fut-card text-fut-accent border border-fut-accent hover:bg-gray-800",
        danger: "bg-red-600 text-white hover:bg-red-700"
    };
    return (
        <button onClick={onClick} className={`${baseStyle} ${variants[variant]} ${className}`}>
            {children}
        </button>
    );
};
