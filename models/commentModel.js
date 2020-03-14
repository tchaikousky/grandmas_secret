const db = require('./conn');

class CommentDB {
    constructor(id, comment, userId, recipeId) {
        this.id = id;
        this.comment = comment;
        this.userId = userId;
        this.recipeId = recipeId;
    }

    static async getAllComments(recipeId) {
        try {
           const response = await db.any(`SELECT * FROM comment WHERE recipeId = ${recipeId}`);
           return response; 
        } catch (error) {
           console.error(error);
           return error; 
        }
    }

    static async getUserComments(userId) {
        try {
            const response = await db.any(`SELECT * FROM comment WHERE userId = ${userId}`);
            return response;
        } catch (error) {
            console.error(error);
            return error;
        }
    }
}

module.exports = CommentDB;