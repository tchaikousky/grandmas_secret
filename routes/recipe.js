const  express = require('express');
const router = express.Router();
const recipeDB = require('../models/recipeModel');
  
router.get('/:id?', async function(req, res) {
    const num = [];
    let count = 0;
    const { id } = req.params;
    const recipe = await recipeDB.getSingleRecipe(id);
    const ingredientName = [];
    const ingredients = await recipeDB.getIngredient(recipe[0].ingredientid);
    const ingredientAmount = [];
    const ingredientMeasurement = [];

    ingredients.forEach(element => {
      ingredientName.push(element[0].name);
      num.push(count);
      count += 1;
    });

    recipe[0].ingredientamount.forEach(element => {
      ingredientAmount.push(element);
    });

    recipe[0].ingredientmeasurement.forEach(element => {
      ingredientMeasurement.push(element);
    });

    res.render('template', {
      locals: {
        title: recipe[0].name, 
        recipe: recipe,
        ingredients: ingredientName,
        ingredientAmount: ingredientAmount,
        ingredientMeasurement: ingredientMeasurement,
        // count: count,
        num: num
    },
    partials: {
      partial: 'partial-single-recipe'
      }
  });
});


module.exports = router;