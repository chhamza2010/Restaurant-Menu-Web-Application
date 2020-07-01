-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2018 at 03:17 PM
-- Server version: 10.1.29-MariaDB-6
-- PHP Version: 7.2.5-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `price` int(45) NOT NULL,
  `resturant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `desc`, `type`, `price`, `resturant_id`) VALUES
(1, 'Afghani Tikka', 'Topped with Afghani Tikka chunks and onion on', 'Pizza', 859, 2),
(2, 'Behari', 'Behari masala marinated chicken chunks, onion', 'Pizza', 859, 2),
(3, 'Carnivore', 'A feast of pepperoni, roasted turkey strips a', 'Pizza', 859, 2),
(4, 'Chicken Supreme', 'Spicy chicken, chicken fajita, smoked chicken', 'Pizza', 859, 2),
(5, 'Fajita Sicilian', 'A delicious blend of fajita chicken, onions, ', 'Pizza', 859, 2),
(6, 'Super Supreme', 'Our famous combination of beef pepperoni, smo', 'Pizza', 859, 2),
(7, 'Sweet Chick', 'A mouth-watering combination of chicken strip', 'Pizza', 859, 2),
(8, 'BBQ Buzz', 'Smoked chicken, capsicum, onions and black ol', 'Pizza', 859, 2),
(9, 'Spicy Ranch', 'Creamy ranch base topped with chicken chunks,', 'Pizza', 859, 2),
(10, 'Super Sicilian', 'Tantalizing blend of spices with fajita chick', 'Pizza', 859, 2),
(11, 'Cheeky Chicken', 'Dip in to our succulent pieces of grilled chi', 'Pizza', 809, 2),
(12, 'Chicken Fajita', 'An authentic taste of Mexico, marinated chick', 'Pizza', 809, 2),
(13, 'Chicken Tikka', 'A specially developed recipe for Pakistan top', 'Pizza', 809, 2),
(14, 'Classic Pepperoni', 'One of our all-time specialties. A meaty feas', 'Pizza', 809, 2),
(15, 'Hot Stuff', 'For those who like it Hot, Green Chilies, Bee', 'Pizza', 809, 2),
(16, 'Margherita', 'Go back to it all again with classic cheese a', 'Pizza', 809, 2),
(17, 'Tropical Hawaian', 'Complete with roasted turkey strips, mozzarel', 'Pizza', 809, 2),
(18, 'Very Veggie', 'A colorful medley of tomatoes, onions, mushro', 'Pizza', 809, 2),
(19, 'Chicken Fajita Supreme', 'Scrumptious pieces of fajita chicken, fresh v', 'Pizza', 809, 2),
(20, 'Chicken Tikka Supreme', 'Our world famous flavor made even better with', 'Pizza', 809, 2),
(21, 'Chilli Chicken', 'Fire up your taste buds with spicy chicken ch', 'Pizza', 809, 2),
(22, 'Cheesy Pops', 'Pop in and try our bite size mozzarella stick', 'Starters', 175, 2),
(23, 'Bread Sticks', 'Golden Crisp on the outside, Soft & Fluffy on', 'Starters', 229, 2),
(24, 'Garlic Bread', 'Four pieces of freshly baked French bread wit', 'Starters', 229, 2),
(25, 'Potato Skins', 'Baked potato sides with pure mozzarella chees', 'Starters', 229, 2),
(26, 'Spicy Wedges', 'Crispy potato wedges covered with spicy herbs', 'Starters', 229, 2),
(27, 'Garlic Bread Supreme', 'Four baked pieces of garlic bread smothered w', 'Starters', 289, 2),
(28, 'BBQ Chicken Roll', 'BBQ Chicken chunks rolled in light tortilla b', 'Starters', 429, 2),
(29, 'Spin Roll', '4 pieces of spin rolls, rolled in tortilla br', 'Starters', 429, 2),
(30, 'Mix  Salad', 'A scrumptious variety of garden fresh vegetab', 'Starters', 459, 2),
(31, 'Chicken Wings', 'Oven baked hot and spicy chicken wings.', 'Starters', 349, 2),
(32, 'Flaming Wing', 'Juicy chicken wings, marinated in our peri pe', 'Starters', 369, 2),
(33, 'Trio BBQ Platter', 'Our oven baked chicken wings, generous portio', 'Starters', 979, 2),
(34, 'Trio Spin Roll Platter', 'Our oven baked chicken wings, generous portio', 'Starters', 979, 2),
(35, 'Cheesy Pops', ' 								          Pop in and try our bite si', 'Desserts', 175, 2),
(36, 'Bread Sticks', ' 								          Golden Crisp on the outsid', 'Desserts', 229, 2),
(37, 'Garlic Bread', ' 								          Four pieces of freshly bak', 'Desserts', 229, 2),
(38, 'Potato Skins', ' 								          Baked potato sides with pu', 'Desserts', 229, 2),
(39, 'Spicy Wedges', ' 								          Crispy potato wedges cover', 'Desserts', 229, 2),
(40, 'Garlic Bread Supreme', ' 								          Four baked pieces of garli', 'Desserts', 289, 2),
(41, 'BBQ Chicken Roll', ' 								          BBQ Chicken chunks rolled ', 'Desserts', 429, 2),
(42, 'Spin Roll', ' 								          4 pieces of spin rolls, ro', 'Desserts', 429, 2),
(43, 'Mix  Salad', ' 								          A scrumptious variety of g', 'Desserts', 459, 2),
(44, 'Chicken Wings', ' 								          Oven baked hot and spicy c', 'Desserts', 349, 2),
(45, 'Flaming Wing', ' 								          Juicy chicken wings, marin', 'Desserts', 369, 2),
(46, 'Trio BBQ Platter', ' 								          Our oven baked chicken win', 'Desserts', 979, 2),
(47, 'Trio Spin Roll Platter', ' 								          Our oven baked chicken win', 'Desserts', 979, 2),
(48, 'Chocolicious Brownie', ' 								          A rich and decadent treat ', 'Desserts', 279, 2),
(49, 'Hershey\'s Cookie', ' 								          8 Slices of Ooey Gooey Goo', 'Desserts', 759, 2),
(50, 'Footlong Lasagna', ' 								          A truly satisfying meal wi', 'Desserts', 529, 2),
(51, 'Mexican Chicken', ' 								          A hearty sandwich of our o', 'Desserts', 489, 2),
(52, 'Mineral Water', ' 								          &nbsp;								    ', 'Desserts', 85, 2),
(53, '7UP', ' 								          &nbsp;								    ', 'Desserts', 90, 2),
(54, 'Mirinda', ' 								          &nbsp;								    ', 'Desserts', 90, 2),
(55, 'Mountain Dew', ' 								          &nbsp;								    ', 'Desserts', 90, 2),
(56, 'Pepsi', ' 								          &nbsp;								    ', 'Desserts', 90, 2),
(57, 'Chicken Corn Soup  ', 'Served with Fish Crackers (Individual)', 'Soups', 235, 3),
(58, 'Chicken Corn Soup (Family Bowl - Faisal Town Branch)', '(Available at Faisal Town Branch)', 'Soups', 630, 3),
(59, 'Chicken Corn Soup (Family Bowl - Mall Road Branch)', '(Available at Mall Road Branch for Dinner Onl', 'Soups', 730, 3),
(60, 'Hot and Sour Soup', 'Served with Fish Crackers', 'Soups', 245, 3),
(61, 'Hot and Sour Soup (Family Bowl - Faisal Town Branch)', '(Available at Faisal Town Branch)', 'Soups', 630, 3),
(62, 'Hot and Sour Soup (Family Bowl - Mall Road Branch)', '(Available at Mall Road Branch for Dinner Onl', 'Soups', 730, 3),
(63, 'Mulligatawny Soup', 'The all time favorite of the subcontinent. Se', 'Soups', 265, 3),
(64, 'French Fries', '', 'Fries Feast', 265, 3),
(65, 'Masala Fries', '(Available at Mall Road and Liberty Branch)', 'Fries Feast', 275, 3),
(66, 'Curly Fries', '(Available at Liberty Branch)', 'Fries Feast', 265, 3),
(67, 'Smilee', '(Available at Liberty Branch)', 'Fries Feast', 275, 3),
(68, 'Choice of Sauces', 'Cheese, Garlic Mayonnaise, Jalapeno, Sweet Ch', 'Fries Feast', 70, 3),
(69, 'Tuna Club Sandwich (Liberty Only)', 'Served with french fries & chicken apple sala', 'Sandwiches', 690, 3),
(70, 'Inside Out Sandwich', 'Two fried boneless chicken breasts with chees', 'Sandwiches', 415, 3),
(71, 'Inside Out Sandwich - On Its Own', 'Two fried boneless chicken breasts with chees', 'Sandwiches', 315, 3),
(72, 'Spicy Crispy Chicken Sandwich', 'Served with French Fries and Coleslaw', 'Sandwiches', 425, 3),
(73, 'Spicy Crispy Chicken Sandwich - On Its Own', '', 'Sandwiches', 325, 3),
(74, 'Spicy Chicken Pocket Sandwich', 'Served with French Fries and Coleslaw (Availa', 'Sandwiches', 430, 3),
(75, 'Spicy Chicken Pocket Sandwich - On Its Own', '(Available at Liberty Branch) ', 'Sandwiches', 330, 3),
(76, 'Club Sandwich', 'Served with French Fries and Coleslaw', 'Sandwiches', 395, 3),
(77, 'Club Sandwich - On Its Own', '', 'Sandwiches', 295, 3),
(78, 'Chicken Sandwich', '(Cold or Toasted) Served with French Fries an', 'Sandwiches', 395, 3),
(79, 'Chicken Sandwich - On Its Own', '(Cold or Toasted)', 'Sandwiches', 295, 3),
(80, 'Grilled Chicken Breast Sandwich', 'Served with French Fries and Coleslaw', 'Sandwiches', 415, 3),
(81, 'Grilled Chicken Breast Sandwich - On Its Own', '', 'Sandwiches', 315, 3),
(82, 'Fried Chicken Breast Sandwich', 'Served with French Fries and Coleslaw', 'Sandwiches', 430, 3),
(83, 'Fried Chicken Breast Sandwich - On Its Own', '', 'Sandwiches', 330, 3),
(84, 'Chicken, Cheese and Egg Sandwich', 'Served with French Fries and Coleslaw', 'Sandwiches', 440, 3),
(85, 'Chicken, Cheese and Egg Sandwich - On Its Own', '', 'Sandwiches', 340, 3),
(86, 'Roast Beef and Cheese Sandwich', 'Served with French Fries and Coleslaw (Availa', 'Sandwiches', 610, 3),
(87, 'Roast Beef and Cheese Sandwich - On Its Own', '(Available at Liberty Branch) ', 'Sandwiches', 510, 3),
(88, 'Cheese Add', '', 'Sandwiches', 95, 3),
(89, 'Spicy Crispy Chicken Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 430, 3),
(90, 'Spicy Crispy Chicken Burger - On Its Own', '', 'SnP Burgers', 330, 3),
(91, 'Chicken Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 395, 3),
(92, 'Chicken Burger - On Its Own', '', 'SnP Burgers', 295, 3),
(93, 'Spicy Chicken Ginger Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 395, 3),
(94, 'Spicy Chicken Ginger Burger - On Its Own', '', 'SnP Burgers', 295, 3),
(95, 'Fried Chicken Breast Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 430, 3),
(96, 'Fried Chicken Breast Burger - On Its Own', '', 'SnP Burgers', 330, 3),
(97, 'Grilled Chicken Breast Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 410, 3),
(98, 'Grilled Chicken Breast Burger - On Its Own', '', 'SnP Burgers', 310, 3),
(99, 'Fish Fillet Burger', 'Served with French Fries and Coleslaw', 'SnP Burgers', 530, 3),
(100, 'Fish Fillet Burger - On Its Own', '', 'SnP Burgers', 430, 3),
(101, 'Cheese Add', '', 'SnP Burgers', 95, 3),
(102, 'Ranch Burger', 'Served with french fries ,Chicken Apple salad', 'Signature Burgers', 750, 3),
(103, 'Italian Chicken Burger', 'Served with french fries , Chicken Apple sala', 'Signature Burgers', 750, 3),
(104, 'Supreme Chicken Burger', '2 chicken patties with onions and tomatoes', 'Signature Burgers', 560, 3),
(105, 'Supreme Chicken Burger - On Its Own', '2 chicken patties with onions and tomatoes ', 'Signature Burgers', 460, 3),
(106, 'Spicy Supreme Chicken Burger', '2 spicy chicken patties with onions and tomat', 'Signature Burgers', 560, 3),
(107, 'Spicy Supreme Chicken Burger - On Its Own', '2 spicy chicken patties with onions and tomat', 'Signature Burgers', 460, 3),
(108, 'The Ultimate Chicken Burger', '2 chicken patties with boiled egg, cheese, on', 'Signature Burgers', 595, 3),
(109, 'The Ultimate Chicken Burger - On Its Own', '2 chicken patties with boiled egg, cheese, on', 'Signature Burgers', 495, 3),
(110, 'Handmade Beef Cheese Burger', 'Our Special Burger, Served with French Fries ', 'Signature Burgers', 660, 3),
(111, 'Handmade Beef Cheese Burger - On Its Own', 'Our Special Burger (Available at Liberty and ', 'Signature Burgers', 560, 3),
(112, 'Cheese Add', '', 'Signature Burgers', 95, 3),
(113, 'Piccata Chicken ', 'Served with jalapeno, cheese macaroni (Availa', 'Chicken', 620, 3),
(114, 'Stuffed Chicken Breast', 'Stuffed with cheese and herb butter Served wi', 'Chicken', 650, 3),
(115, 'Stuffed Chicken Breast with Pineapple Sauce', 'Stuffed with cheese and herb butter Served wi', 'Chicken', 690, 3),
(116, 'Stuffed Chicken Breast with Sweet Chilli Sauce', 'Stuffed with cheese and herb butter Served wi', 'Chicken', 690, 3),
(117, 'Fried Chicken ', 'Served with french fries and coleslaw', 'Chicken', 530, 3),
(118, 'Chicken Drumsticks', '(6 pieces) Served with french fries and coles', 'Chicken', 650, 3),
(119, 'Chicken Shashlick', 'Served with egg fried rice', 'Chicken', 595, 3),
(120, 'Black Pepper Chicken', 'Served with egg fried rice', 'Chicken', 595, 3),
(121, 'Chicken Nuggets', '(10 pieces) Served with french fries and cole', 'Chicken', 630, 3),
(122, 'Stuffed Chicken and Cheese Nuggets', '(8 pieces) Served with french fries and coles', 'Chicken', 650, 3),
(123, 'Sauce Add', 'Extra Sauces: Pineapple, Jalapeno, Chilli Bla', 'Chicken', 70, 3),
(124, 'Kung Pao Chicken with Cashew Nuts', 'Served with egg fried rice (Available at Libe', 'Chinese', 750, 3),
(125, 'Stir Fried Chicken', 'Served with egg fried rice (Available at Libe', 'Chinese', 650, 3),
(126, 'Chicken Chilli Dry', 'Served with egg fried rice', 'Chinese', 640, 3),
(127, 'Chicken Chilli Dry - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 760, 3),
(128, 'Garlic Chicken', 'Family - (Available at Mall Road and Faisal T', 'Chinese', 630, 3),
(129, 'Garlic Chicken - Family', ' (Available at Mall Road (Dinner Only) and Fa', 'Chinese', 750, 3),
(130, 'Chicken with Vegetables', 'Served with egg fried rice', 'Chinese', 595, 3),
(131, 'Chicken with Vegetables - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 730, 3),
(132, 'Lemon chicken', 'Served with egg fried rice', 'Chinese', 630, 3),
(133, 'Lemon Chicken - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 730, 3),
(134, 'Garlic Fish', 'Served with egg fried rice', 'Chinese', 650, 3),
(135, 'Garlic Fish - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 750, 3),
(136, 'Lemon Fish', 'Served with egg fried rice', 'Chinese', 650, 3),
(137, 'Lemon Fish - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 750, 3),
(138, 'Chicken Manchurian', 'Served with egg fried rice', 'Chinese', 630, 3),
(139, 'Chicken Manchurian - Family', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 730, 3),
(140, 'Fish Chilli Dry', 'Served with egg fried rice (Available at Libe', 'Chinese', 650, 3),
(141, 'Egg Fried Rice ', '(Available at Mall Road (Dinner Only) and Fai', 'Chinese', 410, 3),
(142, '                            	Chinese Chicken Chowmein', '', 'Chinese', 580, 3),
(143, 'Pepper Steak Beef', 'Served with baked potato, vegetables and garl', 'Steaks', 790, 3),
(144, 'Pepper Steak Chicken', 'Served with baked potato, vegetables and garl', 'Steaks', 690, 3),
(145, 'Mushroom Steak Beef', 'Served with baked potato, vegetables and garl', 'Steaks', 820, 3),
(146, 'Mushroom Steak Chicken', 'Served with baked potato, vegetables and garl', 'Steaks', 720, 3),
(147, 'Steak Mexicana Beef', 'Served with baked potato, vegetables and garl', 'Steaks', 780, 3),
(148, 'Steak Mexicana Chicken', 'Served with baked potato, vegetables and garl', 'Steaks', 680, 3),
(149, 'Italian Steak Beef', 'Served with baked potato, vegetables and garl', 'Steaks', 810, 3),
(150, 'Italian Steak Chicken', 'Served with baked potato, vegetables and garl', 'Steaks', 710, 3),
(151, 'Jalapeno and Cheese Steak Beef', 'Served with baked potato, vegetables and garl', 'Steaks', 800, 3),
(152, 'Jalapeno and Cheese Steak Chicken', 'Served with baked potato, vegetables and garl', 'Steaks', 700, 3),
(153, 'Pan Fried Chicken and Black Pepper Corn Steak', 'Served with baked potato, vegetables and garl', 'Steaks', 750, 3),
(154, 'Beef Tenderloin Steak with Fried Egg and Herb Butter', 'Served with baked potato, vegetables and garl', 'Steaks', 810, 3),
(155, 'Twin Chicken Leg Steak', 'Served with baked potato, vegetables and garl', 'Steaks', 690, 3),
(156, 'SnP Ultimate', 'Roast chicken, beef pepperoni, roast beef oli', 'Pizza', 770, 3),
(157, 'Double Dacker', 'Combination of chicken and beef pepperoni wit', 'Pizza', 920, 3),
(158, 'Three Cheese - 9 Inches', 'Roast chicken, vegetables, mushrooms, olives ', 'Pizza', 720, 3),
(159, 'Three Cheese - 7 Inches', 'Roast chicken, vegetables, mushrooms, olives ', 'Pizza', 580, 3),
(160, 'Margherita', 'Tomatoes, cheese and basil (Available at Libe', 'Pizza', 610, 3),
(161, 'Pepperoni', 'Beef pepperoni, onions, tomatoes, jalapeno an', 'Pizza', 650, 3),
(162, 'Chicken Tikka - 9 Inches', 'Chicken tikka, onions, tomatoes and green chi', 'Pizza', 630, 3),
(163, 'Chicken Tikka - 7 Inches', 'Chicken tikka, onions, tomatoes and green chi', 'Pizza', 480, 3),
(164, 'Roast Chicken - 9 Inches', 'Roast chicken, onions, capsicum, tomatoes, mu', 'Pizza', 630, 3),
(165, 'Roast Chicken - 7 Inches', 'Roast chicken, onions, capsicum, tomatoes, mu', 'Pizza', 480, 3),
(166, 'Salad Bar', '', 'Salads / Sides', 340, 3),
(167, 'Salad Bar - Bowl', '(Available at Faisal Town) ', 'Salads / Sides', 220, 3),
(168, 'Coleslaw', '', 'Salads / Sides', 190, 3),
(169, 'Chicken Apple Salad', '', 'Salads / Sides', 370, 3),
(170, 'Chicken Apple and Pineapple Salad', ' ', 'Salads / Sides', 395, 3),
(171, 'Egg Fried Rice', '', 'Salads / Sides', 410, 3),
(172, 'Cheese Slice', '', 'Salads / Sides', 95, 3),
(173, 'Plain Nan', '', 'Salads / Sides', 35, 3),
(174, 'Roghani Nan', '', 'Salads / Sides', 45, 3),
(175, 'Garlic Nan', '', 'Salads / Sides', 60, 3),
(176, 'Kalwangi Nan', '', 'Salads / Sides', 60, 3),
(177, 'Warqi Nan', '(Available at Liberty Branch)', 'Salads / Sides', 150, 3),
(178, 'Roti', '', 'Salads / Sides', 20, 3),
(179, 'Raita', '', 'Salads / Sides', 110, 3),
(180, 'Kachumar Salad', '', 'Salads / Sides', 110, 3),
(181, 'Fresh Salad', '', 'Salads / Sides', 110, 3),
(182, 'Tawa Fish', '', 'Fish', 745, 3),
(183, 'Lahori Fried Fish', '', 'Fish', 770, 3),
(184, 'Fish Tikka', 'Served on a Sizzler', 'Fish', 690, 3),
(185, 'Fried Fish', 'Served with french fries, chicken apple and c', 'Fish', 650, 3),
(186, 'Fried Fish Fingers', 'Served with french fries, chicken apple and c', 'Fish', 650, 3),
(187, 'Grilled Fish', 'With lemon sauce served with baked potato and', 'Fish', 660, 3),
(188, 'Chinese Lemon Fish', 'Served with egg fried rice (Available at Libe', 'Fish', 650, 3),
(189, 'Chinese Garlic Fish', 'Served with egg fried rice (Available at Libe', 'Fish', 650, 3),
(190, 'Chinese Fish Chilli Dry', 'Served with egg fried rice (Available at Libe', 'Fish', 650, 3),
(191, 'Mutton Seekh Kabab', '4 Pieces (Available at Liberty Branch)', 'B.B.Q / Grills', 640, 3),
(192, 'Sangam Kabab (4 Pieces)', 'Combination of mutton and chicken (Available ', 'B.B.Q / Grills', 540, 3),
(193, 'Chicken Tikka', 'Per Piece', 'B.B.Q / Grills', 240, 3),
(194, 'Chicken Boti', '1/2 Chicken', 'B.B.Q / Grills', 480, 3),
(195, 'Boneless Chicken Boti', '', 'B.B.Q / Grills', 660, 3),
(196, 'Boneless Chicken Malai Boti', '', 'B.B.Q / Grills', 680, 3),
(197, 'Boneless Chicken Cheese Boti', '(Available at Mall Road (Dinner Only) Liberty', 'B.B.Q / Grills', 690, 3),
(198, 'Chicken Seekh Kabab', '4 Pieces', 'B.B.Q / Grills', 430, 3),
(199, 'Chicken Kofta Kabab', '8 Pieces (Available at Liberty Branch)', 'B.B.Q / Grills', 450, 3),
(200, 'Turkish Kabab', '2 Pieces. Prepared with minced mutton (Availa', 'B.B.Q / Grills', 640, 3),
(201, 'Mix Platter (For Two)', 'Chicken seekh kababs, boneless chicken boti, ', 'B.B.Q / Grills', 1050, 3),
(202, 'Chicken Leg Karahi', '', 'Desi Delights', 680, 3),
(203, 'Makhni Steam Roast Chicken - Half', '', 'Desi Delights', 270, 3),
(204, 'Makhni Steam Roast Chicken - Full', '', 'Desi Delights', 490, 3),
(205, 'Chicken Kabab Karahi', '(Available at Mall Road (Dinner Only) and Fai', 'Desi Delights', 390, 3),
(206, 'Boneless Malai Chicken', '', 'Desi Delights', 590, 3),
(207, 'Chicken Achari Handi', '(Available at Mall Road (Dinner Only), Libert', 'Desi Delights', 750, 3),
(208, 'Chicken Karahi', '600 Grams (Available at Liberty Branch)', 'Desi Delights', 650, 3),
(209, 'Chicken Karahi - Half', '(Available at Mall Road and Faisal Town Branc', 'Desi Delights', 480, 3),
(210, 'Chicken Karahi - Full', '(Available at Mall Road and Faisal Town Branc', 'Desi Delights', 750, 3),
(211, 'Chicken Ginger', '', 'Desi Delights', 540, 3),
(212, 'Chicken Jalfraizi', '', 'Desi Delights', 550, 3),
(213, 'Boneless Chicken Handi', '', 'Desi Delights', 695, 3),
(214, 'Mutton Karahi', '600 Grams', 'Desi Delights', 1050, 3),
(215, 'Mutton Handi', '', 'Desi Delights', 1050, 3),
(216, 'Mutton Achari Handi', '', 'Desi Delights', 1080, 3),
(217, 'Dall Maash Handi', '', 'Desi Delights', 390, 3),
(218, 'Chicken Vegetable Biryani', '(Available at Mall Road and Faisal Town Branc', 'Desi Delights', 550, 3),
(219, 'Vegetable Biryani', '', 'Desi Delights', 410, 3),
(220, 'Shahi Tukra', '2 Pieces', 'Desserts', 95, 3),
(221, 'Firni Thoothi', 'Pair', 'Desserts', 85, 3),
(222, 'Gulab Jamun', '2 Pieces', 'Desserts', 80, 3),
(223, 'Kheer', '', 'Desserts', 95, 3),
(224, 'Seasonal Halwa', '', 'Desserts', 90, 3),
(225, 'Chocolate Mousse Cup', '(Available at Liberty and Faisal Town Branch)', 'Desserts', 195, 3),
(226, 'American Apple Pie a la mode', '(Available at Liberty and Faisal Town Branch)', 'Desserts', 270, 3),
(227, 'Chocolate and Walnut Tart', 'Seasonal  ', 'Desserts', 250, 3),
(228, 'Banana Toffee Cake', '(Available at Liberty Branch)', 'Desserts', 195, 3),
(229, 'Fruit Triffle', '', 'Desserts', 95, 3),
(230, 'Tutti Frutti (Small)', ' ', 'Ice Cream and Shakes', 230, 3),
(231, 'Tutti Frutti (Large)', '', 'Ice Cream and Shakes', 320, 3),
(232, 'M & M Shake', '(Available at Liberty Branch)', 'Ice Cream and Shakes', 290, 3),
(233, 'Fresh Fruit Shake', '(Available at Liberty Branch)', 'Ice Cream and Shakes', 280, 3),
(234, 'Oreo Shake', '(Available at Liberty Branch)', 'Ice Cream and Shakes', 290, 3),
(235, 'Cold Coffee with Ice Cream', '', 'Ice Cream and Shakes', 250, 3),
(236, 'Milk Shake with Ice Cream', 'Mango, Vanilla, Strawberry, Chocolate and Kul', 'Ice Cream and Shakes', 250, 3),
(237, 'Ice Cream (2 Scoops)', 'Mango, Vanilla, Strawberry, Chocolate and Kul', 'Ice Cream and Shakes', 160, 3),
(238, 'Vanilla Ice Cream with Oreo Cookie Crumble and Toffee Sauce', '(Available at Liberty Branch) ', 'Ice Cream and Shakes', 210, 3),
(239, 'Mint Margarita', '(Available at Liberty Branch)', 'Beverages', 120, 3),
(240, 'Seasonal Freah Juice', 'Seasonal Price', 'Beverages', 0, 3),
(241, 'Soft Drink', '', 'Beverages', 75, 3),
(242, 'Fresh Lime with Soft Drink', ' ', 'Beverages', 85, 3),
(243, 'Bottled Water Kinley (Small)', '', 'Beverages', 70, 3),
(244, 'Bottled Water Nestle (Small)', '', 'Beverages', 70, 3),
(245, 'Bottled Water Kinley (Large)', '', 'Beverages', 100, 3),
(246, 'Bottled Water Nestle (Large)', '', 'Beverages', 120, 3),
(247, 'Tea', 'For Dinning Only', 'Beverages', 75, 3),
(248, 'Green Tea', 'For Dinning Only', 'Beverages', 75, 3),
(249, 'Coffee', 'For Dinning Only', 'Beverages', 150, 3),
(250, 'Handi', 'Achari Chicken Handi (Full), Chicken Kabab (4', 'Dastarkhwan Deals', 1550, 3),
(251, 'Karahi', 'Chicken Karahi (Full), Makhni Steam Roast Chi', 'Dastarkhwan Deals', 1650, 3),
(252, 'Chinese', 'Hot and Sour/Chicken Corn Soup (Family Bowl),', 'Dastarkhwan Deals', 1750, 3),
(253, 'Burger', 'Spicy Crispy chicken Burgers (4), Chicken San', 'Dastarkhwan Deals', 1850, 3),
(254, 'Mayaari Sehri', 'Tawa Qeema (Portion) Sada Chana (Portion) Pak', 'Deals', 525, 3),
(255, 'Khaas Sehri', 'Boneless Chicken Handi (Portion) Cheese Omell', 'Deals', 725, 3),
(256, 'Pakistani B.B.Q', 'Chicken Tikka (1 Piece), Chicken Seekh Kabab ', 'Deals', 580, 3),
(257, 'Pakistani Deluxe', 'Boneless Chicken Handi (1 Portion), Chicken S', 'Deals', 570, 3),
(258, 'Pakistani V.I.P', 'Boneless Chicken Handi (1 Portion), Boneless ', 'Deals', 710, 3),
(259, 'V.I.P', 'Chicken Shashlick (1 Portion), Chicken Sandwi', 'Deals', 650, 3),
(260, 'Deluxe', 'Chicken Breast Sandwich, Chicken  Nuggets (5 ', 'Deals', 580, 3),
(261, 'Superior', 'Fried Chicken (2 Pieces), Chicken Sandwich (2', 'Deals', 490, 3),
(262, 'Pakistani Omelette (3 Eggs)', '', 'Sehri Items', 175, 3),
(263, 'Cheese Omelette (3 Eggs)', '', 'Sehri Items', 225, 3),
(264, 'Fried Eggs (2 Eggs)', '', 'Sehri Items', 150, 3),
(265, 'Murgh Chanay ', '', 'Sehri Items', 295, 3),
(266, 'Anda Chanay', '', 'Sehri Items', 195, 3),
(267, 'Sada Chanay', '', 'Sehri Items', 150, 3),
(268, 'Chicken Tawa Qeema', '', 'Sehri Items', 295, 3),
(269, 'Tawa Paratha', '', 'Sehri Items', 75, 3),
(270, 'Puri', '', 'Sehri Items', 50, 3),
(271, 'Lassi (Glass)', 'Sweet/Saltish', 'Sehri Items', 95, 3),
(272, 'Lassi (Pitcher)', 'Sweet/Saltish', 'Sehri Items', 380, 3),
(273, 'Tandoori mela', 'a sampler of tandoori enchants for you and a ', 'Tandoori Namonay', 2985, 1),
(274, 'Tandoori jhinga', 'jumbo prawns charred in their shells – chutne', 'Tandoori Namonay', 2195, 1),
(275, 'Fish tikka', 'succulent chunks of tandori fish mustard &amp', 'Tandoori Namonay', 1865, 1),
(276, 'Bewazni paneer tikka', 'feather lite cottage cheese – tandoori glaze ', 'Tandoori Namonay', 1195, 1),
(277, 'Kandahar kabab', 'succulent beef tenderloin – roast tomatoes mu', 'Tandoori Namonay', 1295, 1),
(278, 'Seekh lahori', 'premium beef mince kebab – streets of Lahore ', 'Tandoori Namonay', 1135, 1),
(279, 'Masala chanp', 'double cut mutton chops - marinated overnight', 'Tandoori Namonay', 1685, 1),
(280, 'Lucknow kabab', 'meaty goat kabab basted with lamb fat crisp o', 'Tandoori Namonay', 1495, 1),
(281, 'Murgh malai tikka', 'tender chicken breast – creamy cheese green c', 'Tandoori Namonay', 1275, 1),
(282, 'Murgh kabab badami', 'delicate minced chicken – almond oil dressing', 'Tandoori Namonay', 1285, 1),
(283, 'Jhinga hara masala', 'fresh shrimp cauliflower and green beans coco', 'Karahi Kay Kamal', 1795, 1),
(284, 'Teen mirch ki machli', 'pan roasted filets of fish – chili peppers ch', 'Karahi Kay Kamal', 1865, 1),
(285, 'Maghaz masala', 'milk &amp; turmeric poached goat brains – coo', 'Karahi Kay Kamal', 1175, 1),
(286, 'Nali ki nihari', 'braised veal shank &amp; trotters - carameliz', 'Karahi Kay Kamal', 1375, 1),
(287, 'Batair tawa masala', 'tender farm-raised quail – pan roasted tawa s', 'Karahi Kay Kamal', 1265, 1),
(288, 'Roasted joints', 'leg of kid goat cooked two ways – sautéed veg', 'Karahi Kay Kamal', 1695, 1),
(289, 'Bhuna keema', 'beef mince off the griddle – caramelized onio', 'Karahi Kay Kamal', 1165, 1),
(290, 'Mutton shank achari', 'rich and pungent young goat curry – pickling ', 'Karahi Kay Kamal', 1595, 1),
(291, 'Vindalo gosht', 'tender leg of mutton – sweet sour and chili c', 'Karahi Kay Kamal', 1565, 1),
(292, 'Dhaba murgh', 'boneless thighs of tandori chicken – red toma', 'Karahi Kay Kamal', 1275, 1),
(293, 'Murgh kali mirch', 'sumptuous chicken tikka – creamy black pepper', 'Karahi Kay Kamal', 1285, 1),
(294, 'Pista korma', 'tender chicken breasts –green pistachio korma', 'Karahi Kay Kamal', 1295, 1),
(295, 'Murgh tikka masala', 'boneless chicken tikka – cottage cheese &amp;', 'Karahi Kay Kamal', 1265, 1),
(296, 'Murgh Karahi', 'chicken thighs on the bone – cooked in a wok ', 'Karahi Kay Kamal', 1265, 1),
(297, 'Sabzi karahi', 'seasonal vegetables roasted tomato paste &amp', 'Diigar Lawazmaat', 695, 1),
(298, 'Palak paneer', 'baby spinach, mustard &amp; fenugreek greens ', 'Diigar Lawazmaat', 665, 1),
(299, 'Baingan ka bharta', 'charred eggplant pulp – coconut with turmeric', 'Diigar Lawazmaat', 645, 1),
(300, 'Tamatar ka kut', 'roasted tomatoes in fomato curry with eggs', 'Diigar Lawazmaat', 655, 1),
(301, 'Corn takatak', 'sweet and baby corn cooked on the griddle – t', 'Diigar Lawazmaat', 675, 1),
(302, 'Daal Makhani', 'stewed black lentils - fenugreek infused butt', 'Diigar Lawazmaat', 575, 1),
(303, 'Khatti daal', 'slow cooked red lentils – tamarind &amp; horm', 'Diigar Lawazmaat', 565, 1),
(304, 'Nimbu Pulao', 'lemon infused basmati rice - curry leaves &am', 'Diigar Lawazmaat', 475, 1),
(305, 'Yakhni Pulao', 'long grain basmati rice - chicken and whole s', 'Diigar Lawazmaat', 465, 1),
(306, 'Sada chawal', 'steamed basmati rice - cardamom cumin &amp; g', 'Diigar Lawazmaat', 425, 1),
(307, 'Salataa', 'fresh cut seasonal vegetables tossed in a bal', 'Diigar Lawazmaat', 225, 1),
(308, 'Sabzi achaar', 'tangy seasonal vegetables pickled with spices', 'Diigar Lawazmaat', 195, 1),
(309, 'Pyaz ki salad', 'crunchy onion rings tossed with seasonal vege', 'Diigar Lawazmaat', 175, 1),
(310, 'Kachumber salaad', 'thick seasonal vegetables - lemon &amp; black', 'Diigar Lawazmaat', 175, 1),
(311, 'Kheera raita', 'hung yogurt dip with pomegranate – raisins &a', 'Diigar Lawazmaat', 215, 1),
(312, 'Pudina raita', 'hormones &amp; preservative free yogurt – fre', 'Diigar Lawazmaat', 175, 1),
(313, 'Roti', 'whole grain tandoori bread – hearty &amp; lig', 'Diigar Lawazmaat', 55, 1),
(314, 'Pratha', 'hormone free desi ghee glazed crispy flat bre', 'Diigar Lawazmaat', 95, 1),
(315, 'Naan', 'fine tandoori bread – topped with sesame seed', 'Diigar Lawazmaat', 85, 1),
(316, 'Kulcha', 'fine tandoori bread – topped with sesame seed', 'Diigar Lawazmaat', 65, 1),
(317, 'Cheese naan', 'fine tandoori bread stuffed with a cheese mix', 'Diigar Lawazmaat', 225, 1),
(318, 'Jaleibi garam', 'mysterious crispy pretzel shaped fried waffle', 'Khaas Mithaiyaan', 230, 1),
(319, 'Gulab jamon', 'milk fudge dough balls - green cardamom infus', 'Khaas Mithaiyaan', 250, 1),
(320, ' Ice cream sandwich', 'dark rich chocolate cake &amp; pistachio kulf', 'Khaas Mithaiyaan', 330, 1),
(321, 'Firni', 'local delicacy - rice &amp; reduced milk pudd', 'Khaas Mithaiyaan', 280, 1),
(322, 'Chai cheese cake', 'baked cheesecake with ginger cookie crust - c', 'Khaas Mithaiyaan', 350, 1),
(323, 'Fruit kulfi', 'frozen reduced milk with fruit salad', 'Khaas Mithaiyaan', 310, 1),
(324, 'Masala lassi', 'yogurt smoothie flavored with mint &amp; masa', 'Mashrubaat', 135, 1),
(325, 'Thandai', 'exotic hormone-free milk &amp; nuts &amp; fen', 'Mashrubaat', 255, 1),
(326, 'Iced chai', 'antioxidant tea with fresh lemon juice &amp; ', 'Mashrubaat', 135, 1),
(327, 'Fruit juice', 'cold pressed antioxidant detoxifying fresh ju', 'Mashrubaat', 255, 1),
(328, 'Nimbu pani', 'freshly squeezed lemon juice – cumin masala &', 'Mashrubaat', 135, 1),
(329, 'Jal jeera', 'cumin imint lemon and brown sugar blended dig', 'Mashrubaat', 135, 1),
(330, 'Nimbu soda', 'freshly squeezed lemon juice – cumin masala &', 'Mashrubaat', 175, 1),
(331, 'Pani', 'one &amp; a half liter of chilled bottled wat', 'Mashrubaat', 135, 1),
(332, 'Thandii botal', 'three hundred and thirty ml’ canned sodas', 'Mashrubaat', 145, 1),
(333, 'Perrier water', 'canned premium sparkling spring water', 'Mashrubaat', 175, 1),
(334, 'Karak chai', 'dhaba style black tea cooked on dum with milk', 'Mashrubaat', 230, 1),
(335, 'Kashmiri chai', 'pink tea with milk cream and pistachio nuts', 'Mashrubaat', 270, 1),
(336, 'Kehwa', 'traditional green tea brewed with cardamom mi', 'Mashrubaat', 210, 1),
(337, 'Coffee', 'davidoff Cafe Grande Cuvee’ served with or wi', 'Mashrubaat', 290, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resturant`
--

CREATE TABLE `resturant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resturant`
--

INSERT INTO `resturant` (`id`, `name`, `telephone`, `address`, `website`, `hours`) VALUES
(1, 'andazz', '04235772011', 'New Foodstreet Lahore', 'https://andaazrestaurant.com/', ''),
(2, 'pizzahut', '111241241', 'Mm alarm road lahore', 'https://pizzahut.com.pk', ''),
(3, 'saltnpepper', '57442223', 'Liberty market Lahore', 'http://www.saltnpepper.com.pk/salt-n-pepper-restaurant/menu', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `resturant`
--
ALTER TABLE `resturant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;
--
-- AUTO_INCREMENT for table `resturant`
--
ALTER TABLE `resturant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
