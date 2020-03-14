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

    static async getIngredient(idList) {
        const ingredients = [];
        let count = 0;
        while (count < idList.length) {
            try {
                const response = await db.any(`SELECT * FROM ingredient WHERE id = ${idList[count]}`);
                ingredients.push(response);
                count+=1;
                
            }catch(err) {
                console.error(err);
                return err;
            }
        }
        return ingredients;
    }

    static async getSingleRecipe(id) {
        try {
            const response = await db.any(`SELECT * FROM recipe WHERE id = ${id}`);
            return response;
        }catch(err) {
            console.error(err);
            return err;
        }
    }

    static async getAllRecipes() {
        try {
            const response = await db.any(`SELECT * FROM recipe`);
            return response;
        }catch(err) {
            console.error(err);
            return err;
        }
    }

    
}

module.exports = RecipeDB;
