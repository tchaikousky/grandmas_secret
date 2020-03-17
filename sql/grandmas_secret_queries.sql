INSERT INTO users (firstName, lastName, email, password)  VALUES 
	('test', 'test', 'test@test.com', 'test');

INSERT INTO ingredient (name, category) VALUES 
	('salt', 'spice'),
	('pepper', 'spice'),
	('pepperoni', 'meat'),
	('flour', 'grain');

INSERT INTO recipe (name, category, ingredientid, ingredientMeasurement) VALUES
	('pizza', 'italian', ARRAY [1, 2, 3, 4], ARRAY ['1 tsp', '1 tsp', '10 oz', '4 cups']);

-- Show all recipes

SELECT * FROM recipe;

-- Show single recipe

SELECT name, ingredientid, ingredientMeasurement FROM recipe WHERE id = 1;


INSERT INTO recipe (name, category, ingredientId, ingredientAmount, ingredientMeasurement, instructions) VALUES ('Ground Beef Enchiladas', 'Mexican', ARRAY [9,10,11,12,13,14,15,16,17], ARRAY [1.5, .5, .25, 1.25, 1, 10.75, 2, 6], ARRAY ['lbs', 'lbs', 'cup', 'oz', 'cup', 'oz', 'cup', 'inch'], 'Preheat oven to 350 degrees F (175 degrees C).
In a large skillet over medium heat, cook the ground beef, green onion, and jalapeno pepper until the beef is evenly brown. Stir in water and taco seasoning. Simmer until water has evaporated.
In a medium bowl, mix together yogurt, condensed soup, and cheese.
Divide the meat mixture evenly between tortillas. Place a couple of tablespoons of cheese mixture over meat, and roll up. Place in a 7x11 inch baking dish. Repeat for each tortilla. Spoon remaining cheese mixture over the top of the tortillas.
Bake in preheated oven for 20 to 30 minutes.');


INSERT INTO recipe (name, category, ingredientId, ingredientMeasurement, ingredientAmount, instructions) VALUES
('pizza', 'american', ARRAY [19, 20, 15, 7], ARRAY [





    <ul>
    ${ingredients.forEach(ingredient => ` 
        <li>${ingredient[0].name}</li>`)}
</ul>






${comment.map(comment => ` 
    <div id="commentContainer">
        <p>${comment.comment}</p>
        <p>${comment.userid}</p>`).join('')} 
    </div>





${completedComment.map(comment => ` 
    <div id="commentContainer">
        <p>${comment[0].comment}</p>
        <p>${comment[0].userid}</p>`).join('')
    ${comment[1].map(sub => `
        <p>${sub.subcomment}</p>
        <p>${sub.userid}</p>`).join('')
    }}
        
    </div>


























































    INSERT INTO recipe (name, category, ingredientId, ingredientAmount, ingredientMeasurement, instructions) VALUES
('pizza', 'american', ARRAY [19, 20, 15, 7], ARRAY [1, .5, 1, 10], ARRAY ['lbs', 'cup', 'cup', 'oz'], 
	'Preheat a waffle iron according to manufacturers instructions.Roll pizza dough to 1/2-inch thickness on a flat work surface. Cut dough into 16 rounds using a 2-inch cutter. Press rounds out with your fingers until each measures about 3 inches across.
Spoon 1 teaspoon pizza sauce into the center of 8 rounds. Top each with 2 teaspoons mozzarella cheese and 1 slice of pepperoni. Cover with remaining 8 rounds, pressing around edges to seal.
Cook the sealed rounds, in batches, on the preheated waffle iron until lightly browned, about 2 minutes. Top each one with another pepperoni slice and a little more mozzarella cheese. Close waffle iron and continue cooking until golden brown, 1 to 2 minutes more.');



INSERT INTO ingredient(name, category) VALUES ('jalapeno pepper', 'vegetables'),
('Bok Choy', 'vegetables'),
('Snake Beans', 'vegetables'),
('Sorrel Leaves', 'vegetables'),
('Cherry Tomatoes', 'vegetables'),
('Plantain', 'vegetables'),
('Turnip', 'vegetables'),
('Sweet Potatoes', 'vegetables'),
('Ridge Gourd', 'vegetables'),
('Spinach', 'vegetables'),
('Pimiento', 'vegetables'),
('Radish', 'vegetables'),
('Mushroom', 'vegetables'),
('Lettuce', 'vegetables'),
('jShallots', 'vegetables'),
('Yam', 'vegetables'),
('Leek', 'vegetables'),
('Jack Fruit', 'vegetables'),
('Garlic', 'vegetables'),
('Cucumber', 'vegetables'),
('Zucchini', 'vegetables'),
('Carrot', 'vegetables'),
('Corn', 'vegetables'),
('Celery', 'vegetables'),
('Cauliflower', 'vegetables'),
('Broccoli', 'vegetables'),
('Bell Pepper', 'vegetables'),
('Beets', 'vegetables'),
('Chives', 'spice'),
('Galangal', 'spice'),
('Tulsi', 'spice'),
('Sage', 'spice'),
('Rosemary', 'spice'),
('Oregano', 'spice'),
('Paprika', 'spice'),
('Mint Leaves', 'spice'),
('Red Chilli', 'spice'),
('Nutmeg', 'spice'),
('Thyme', 'spice'),
('Turmeric', 'spice'),
('Ginger Powder', 'spice'),
('Dill', 'spice'),
('Cinnamon', 'spice'),
('Cloves', 'spice'),
('Cayenne', 'spice'),
('Basil', 'spice'),
('Parsley', 'spice'),
('Milk', 'dairy'),
('Gouda Cheese', 'dairy'),
('Feta Cheese', 'dairy'),
('Cream Cheese', 'dairy'),
('Blue Cheese', 'dairy'),
('Ricotta Cheese', 'dairy'),
('Cheddar Cheese', 'dairy'),
('Yogurt', 'dairy'),
('Cottage Cheese', 'dairy'),
('Condensed Milk', 'dairy'),
('Butter', 'dairy'),
('Buttermilk', 'dairy'),
('Beef', 'Meat'),
('Turkey', 'Meat'),
('Chicken', 'Meat'),
('Pork', 'Meat'),
('Mutton', 'Meat'),
('Crab', 'Meat'),
('Ham', 'Meat'),
('Chops', 'Meat'),
('Quail', 'Meat'),
('Bacon', 'Meat'),
('Venison', 'Meat'),
('Racoon', 'Meat'),
('Bear', 'Meat'),
('Fish', 'Meat'),
('Shrimp', 'Meat'),
('Mutton Liver', 'Meat'),
('Chicken Liver', 'Meat'),
('Cranberry', 'Fruit'),
('Kiwi', 'Fruit'),
('Blueberries', 'Fruit'),
('Mango', 'Fruit'),
('Watermelon', 'Fruit'),
('Strawberry', 'Fruit'),
('Papaya', 'Fruit'),
('Orange', 'Fruit'),
('Olives', 'Fruit'),
('Pear', 'Fruit'),
('Mulberry', 'Fruit'),
('Lemon', 'Fruit'),
('Grapefruit', 'Fruit'),
('Grapes', 'Fruit'),
('Apple', 'Fruit'),
('Banana', 'Fruit'),
('Cherry', 'Fruit'),
('Coconut', 'Fruit'),
('Apricot', 'Fruit'),
('Peach', 'Fruit'),
('Figs', 'Fruit'),
('Pineapple', 'Fruit'),
('Pomegranate', 'Fruit'),
('Almond Milk', 'liquid'),
('Red Wine', 'liquid'),
('White Wine', 'liquid'),
('Soy Milk', 'liquid'),
('Vinegar', 'liquid'),
('Coffee', 'liquid'),
('Beer', 'liquid'),
('Vegetable Oil', 'liquid');


