-- Create the CATEGORY table
CREATE TABLE CATEGORY (
    CATEGORY_ID INT PRIMARY KEY,
    CATEGORY_NAME VARCHAR(45),
    CATEGORY_TAX_FAMILY VARCHAR(45),
    CATEGORY_DESCRIPTION VARCHAR(45)
);

-- Insert 87 records into CATEGORY table
INSERT INTO CATEGORY (CATEGORY_ID, CATEGORY_NAME, CATEGORY_TAX_FAMILY, CATEGORY_DESCRIPTION) VALUES
(1, 'Tequila', 'DS', 'Tequila and related products'),
(2, 'Vodka', 'DS', 'Vodka and flavored vodka'),
(3, 'Whiskey Bourbon/American', 'DS', 'Whiskey and bourbon'),
(4, 'Rum', 'DS', 'Rum and spiced rum'),
(5, 'Gin', 'DS', 'Gin and botanical spirits'),
(6, 'Craft Beer', 'B', 'Craft beer, Champagne and regular beer'),
(7, 'White', 'W', 'White wine'),
(8, 'Whiskey Scotch', 'DS', 'Whiskey from Scotch'),
(9, 'Liqueur', 'DS', 'Sweet and dessert liqueurs'),
(10, 'Non Alcoholic Beverage', 'N/A', 'Non-alcoholic beverages'),
(11, 'Mixer', 'N/A', 'Cocktail mixers'),
(12, 'Glassware', 'N/A', 'Glassware and bar tools'),
(13, 'Cider', 'W', 'Ciders and meads'),
(14, 'Bag', 'N/A', 'Reusable bags and carriers'),
(15, 'Bar Tools', 'N/A', 'Shakers, strainers, and more'),
(16, 'Amaro', 'DS', 'Bittersweet Italian liqueur'),
(17, 'Whiskey Irish', 'DS', 'Whiskey Irish style'),
(18, 'Brandy', 'DS', 'Distilled spirit made from fermented fruit juice, mash, or wine'),
(19, 'Bitters', 'N/A', 'Beer that is strongly flavored with hops and has a bitter taste'),
(20, 'Mezcal', 'DS', 'Rested and aged mezcal extract'),
(21, 'Bubbles', 'W', 'Wine with bubbles'),
(22, 'Whiskey Mexican', 'DS', 'Whiskey Mexican Style'),
(23, 'Absinthe', 'DS', 'Highly alcoholic, anise-flavored spirit'),
(24, 'Red', 'W', 'Red Wine'),
(25, 'Garnish', 'N/A', 'Alcoholic beverage from Brazil made from fermented sugarcane juice'),
(26, 'Orange Wine', 'W', 'White wine fermented with grape skins'),
(27, 'Red New World', 'W', 'Red wine from non-European regions'),
(28, 'White Sauvignon Blanc', 'W', 'Crisp white wine made from Sauvignon Blanc grapes'),
(29, 'Fortified', 'DS', 'Wine strengthened with spirits like sherry'),
(30, 'Whiskey Canadian', 'DS', 'Canadian whiskey brands'),
(31, 'Retail', 'N/A', 'Retail category for sales of various products'),
(32, 'Grappa', 'DS', 'Italian grape-based brandy'),
(33, 'Books', 'N/A', 'Books related to alcoholic beverages and cocktails'),
(34, 'Tobacco', 'N/A', 'Tobacco products'),
(35, 'Shochu', 'DS', 'Japanese distilled beverage'),
(36, 'Rose', 'W', 'Rosé wine made from red grapes with minimal skin contact'),
(37, 'Sake', 'DS', 'Japanese rice wine'),
(38, 'Soju', 'DS', 'Korean distilled spirit'),
(39, 'Red Bordeaux', 'W', 'Famous red wines from Bordeaux, France'),
(40, 'White Picpoul', 'W', 'White wine from Picpoul grapes'),
(41, 'Charanda', 'DS', 'Mexican sugarcane spirit'),
(42, 'Pox', 'DS', 'Traditional Mexican distilled corn drink'),
(43, 'White Gewurztraminer', 'W', 'Aromatic white wine with spicy notes'),
(44, 'Calvados', 'DS', 'Apple or pear brandy from Normandy, France'),
(45, 'Whiskey South African', 'DS', 'Whiskey produced in South Africa'),
(46, 'Bacanora', 'DS', 'Agave spirit from Sonora, Mexico'),
(47, 'Raicilla', 'DS', 'Mexican distilled spirit from Jalisco'),
(48, 'Red Chianti', 'W', 'Red wine from Chianti region of Italy'),
(49, 'Red Malbec', 'W', 'Red wine made from Malbec grapes'),
(50, 'Cognac', 'DS', 'Premium brandy from the Cognac region of France'),
(51, 'White Pinot Grigio', 'W', 'Crisp white wine made from Pinot Grigio grapes'),
(52, 'Red Zinfandel', 'W', 'Rich red wine made from Zinfandel grapes'),
(53, 'Aquavit', 'DS', 'Scandinavian spirit flavored with caraway or dill'),
(54, 'Dom Beer', 'B', 'Domestic beer brands'),
(55, 'Fruit', 'N/A', 'Fruit used in cocktails or garnish'),
(56, 'Mead', 'DS', 'Honey wine and related beverages'),
(57, 'Liability', 'N/A', 'Products with additional liability'),
(58, 'Red Pinot Noir', 'W', 'Elegant red wine made from Pinot Noir grapes'),
(59, 'White Riesling', 'W', 'Sweet or dry white wine made from Riesling grapes'),
(60, 'Red Merlot', 'W', 'Soft and smooth red wine made from Merlot grapes'),
(61, 'Sotol', 'DS', 'Distilled spirit from the Sotol plant'),
(62, 'RTD', 'DS', 'Ready-to-drink alcoholic beverages'),
(63, 'Whisky English', 'DS', 'Whisky produced in England'),
(64, 'Red Old World', 'W', 'Red wine from European regions'),
(65, 'Whiskey Japanese', 'DS', 'Whiskey produced in Japan'),
(66, 'Other', 'N/A', 'Other miscellaneous alcoholic products'),
(67, 'Whiskey Indian', 'DS', 'Whiskey produced in India'),
(68, 'Whiskey American Single Malt', 'DS', 'Single malt whiskey made in the USA'),
(69, 'Red Blend', 'W', 'Blended red wines from different grapes'),
(70, 'Cachaca', 'DS', 'Brazilian distilled spirit made from sugarcane juice'),
(71, 'Ice', 'N/A', 'Ice used for serving drinks'),
(72, 'Pisco', 'DS', 'Grape brandy from South America'),
(73, 'Snacks', 'N/A', 'Snacks served alongside drinks'),
(74, 'Whiskey French', 'DS', 'Whiskey produced in France'),
(75, 'Red Cabernet Sauvignon', 'W', 'Rich red wine made from Cabernet Sauvignon grapes'),
(76, 'Red Tempranillo', 'W', 'Red wine made from Tempranillo grapes'),
(77, 'Red Beaujolais', 'W', 'Light red wine from the Beaujolais region of France'),
(78, 'Whisky German', 'DS', 'Whisky produced in Germany'),
(79, 'White Chenin', 'W', 'White wine made from Chenin Blanc grapes'),
(80, 'White Muscadet', 'W', 'Dry white wine from the Muscadet region'),
(81, 'Red Borolo', 'W', 'Rich red wine from the Barolo region of Italy'),
(82, 'Whiskey Chech', 'DS', 'Whiskey produced in Czech Republic'),
(83, 'Red Montepulciano', 'W', 'Red wine made from Montepulciano grapes'),
(84, 'Whiskey Taiwaneese', 'DS', 'Whiskey produced in Taiwan'),
(85, 'Red Mourvedre', 'W', 'Red wine made from Mourvèdre grapes'),
(86, 'Baijiu', 'DS', 'Chinese distilled alcoholic beverage'),
(87, 'Singani', 'DS', 'Distilled spirit from Bolivia');



-- Create the SUPPLIER table
CREATE TABLE SUPPLIER (
    SUPPLIER_ID INT PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(45),
    SUPPLIER_CONTACT VARCHAR(45)
);

-- Insert 35 records into SUPPLIER table
INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME, SUPPLIER_CONTACT) VALUES
(1, 'Restaurant Depot', 'contact@restaurantdepot.com'),
(2, 'Twelve Twenty Four', 'info@twelvetwentyfour.com'),
(3, 'Favorite Brands', 'support@favoritebrands.com'),
(4, 'Pangea Selections LLC', 'sales@pangeaselections.com'),
(5, 'Southern Glazers Wine & Spirits', 'sales@sgws.com'),
(6, 'Republic', 'orders@republic.com'),
(7, 'Splurge', 'splurge@spirits.com'),
(8, 'Ben E Keith', 'contact@benekeith.com'),
(9, 'Virtuoso', 'info@virtuoso.com'),
(10, 'Pioneer', 'pioneer@beverages.com'),
(11, 'True Fabrications', 'true@fabrications.com'),
(12, 'Bonnecaze', 'sales@bonnecaze.com'),
(13, 'Global Quality Imports', 'info@globalqualityimports.com'),
(14, 'Serendipity', 'contact@serendipity.com'),
(15, 'Victory', 'victory@victoryspirits.com'),
(16, 'Green Light Distribution', 'greenlight@distribution.com'),
(17, 'A Priori', 'apriori@spirits.com'),
(18, 'Flood', 'flood@beverages.com'),
(19, 'Mexcor', 'mexcor@distributors.com'),
(20, 'David Mayfield Selections', 'david@mayfieldselections.com'),
(21, 'Cocktail Kingdom', 'cocktailkingdom@cocktails.com'),
(22, 'Midstate', 'midstate@wholesale.com'),
(23, 'Texas Tru', 'texastru@beverages.com'),
(24, 'Austin Beerworks', 'beerworks@austin.com'),
(25, 'Favorite Brands Beer & Wine', 'contact@favoritebrandsbeerwine.com'),
(26, 'Ambiente', 'contact@ambiente.com'),
(27, 'Parker Wolf', 'contact@parkerwolf.com'),
(28, 'Gama', 'contact@gama.com'),
(29, 'Random House', 'contact@randomhouse.com'),
(30, 'Kwik Ice', 'contact@kwikice.com'),
(31, 'Sake Hana', 'contact@sakehana.com'),
(32, 'Brown', 'contact@brown.com'),
(33, 'HEB', 'contact@heb.com'),
(34, 'Genji Sake', 'contact@genjisake.com'),
(35, 'Henderson Selections', 'contact@hendersonselections.com');
