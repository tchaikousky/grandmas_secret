const  express = require('express');
const router = express.Router();
const recipeDB = require('../models/recipeModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  const recipes = await recipeDB.getAllRecipes();
  res.render('template', {
    locals: {
      title: "Grandma's Secret",
      recipes: recipes 
      },
    partials: {
      partial: 'partial-index'
      }
  });
});

module.exports = router;
