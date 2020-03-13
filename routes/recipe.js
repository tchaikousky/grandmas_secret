const  express = require('express');
const router = express.Router();
const recipeDB = require('../models/recipeModel');
  
router.get('/:id?', async function(req, res) {
    const { id } = req.params;
    console.log(id);
    const recipe = await recipeDB.getSingleRecipe(id);
    res.render('template', {
      locals: {
        title: recipe[0].name, 
        recipe: recipe
    },
    partials: {
      partial: 'partial-single-recipe'
      }
  });
});


module.exports = router;