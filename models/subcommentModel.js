const db = require('./conn');

class SubcommentDB {
    constructor(id, subcomment, userId, commentId) {
        this.id = id;
        this.subcomment = subcomment;
        this.userId = userId;
        this.commentId = commentId;
    }

    static async getAllSubcomments(commentId) {
        try {
           const response = await db.any(`SELECT * FROM subcomment WHERE commentid = ${commentId}`);
           return response; 
        } catch (error) {
           console.error(error);
           return error; 
        }
    }

}

module.exports = SubcommentDB;