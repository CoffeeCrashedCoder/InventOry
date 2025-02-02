module.exports = (fileName) => {
    return `obsidian://open?vault=${encodeURIComponent(app.vault.getName())}&file=${encodeURIComponent(fileName)}`;
};