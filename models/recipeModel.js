const db = require('./conn');

class RecipeDB {
    constructor(id, name, category, ingredientId,
         ingredientAmount, ingredientMeasurement, instructions) {
             this.id = id;
             this.name = name;
             this.category = category;
             this.ingredientId = ingredientId;
             this.ingredientMeasurement = ingredientMeasurement;
             this.ingredientAmount = ingredientAmount;
             this.instructions = instructions;
    }

    static async getSingleRecipe(id) {
        try {
            const response = await db.any(`SELECT * FROM recipe WHERE id = ${id}`);
            console.log(response);
            return response;
        }catch(err) {
            console.error(err);
            return err;
        }
    }

    static async getAllRecipes() {
        try {
            const response = await db.any(`SELECT * FROM recipe`);
            console.log(response);
            return response;
        }catch(err) {
            console.error(err);
            return err;
        }
    }
}

module.exports = RecipeDB;
