-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 02:52 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdpetworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `iftiazahmed`
--

CREATE TABLE `iftiazahmed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `purchased_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `o_price` double(10,2) NOT NULL,
  `n_price` double(10,2) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description1` varchar(500) NOT NULL,
  `description2` varchar(500) NOT NULL,
  `description3` varchar(500) NOT NULL,
  `pet` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `o_price`, `n_price`, `brand`, `description1`, `description2`, `description3`, `pet`, `category`, `stock`) VALUES
(1, 'product/litters/premium_cat_bentonite_apple_5L.png', 'Premium Cat Bentonite Litter Apple 5L', 400.00, 300.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 20),
(2, 'product/litters/premium_cat_bentonite_coffee_10L.png', 'Premium Cat Bentonite Litter Coffee 10L', 800.00, 600.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 20),
(3, 'product/litters/premium_cat_bentonite_lavender_10L.png', 'Premium Cat Bentonite Litter Lavender 10L', 0.00, 600.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 19),
(4, 'product/litters/premium_cat_bentonite_rose_5L.png', 'Premium Cat Bentonite Litter Rose 5L', 400.00, 300.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 19),
(5, 'product/litters/premium_cat_bentonite_apple_10L.png', 'Premium Cat Bentonite Litter Apple 10L', 800.00, 600.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 19),
(6, 'product/litters/premium_cat_bentonite_lavender_5L.png', 'Premium Cat Bentonite Litter Lavender 5L', 400.00, 300.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 20),
(7, 'product/litters/premium_cat_bentonite_rose_10L.png', 'Premium Cat Bentonite Litter Rose 10L', 800.00, 600.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat ', 'Litter', 19),
(8, 'product/litters/premium_cat_bentonite_coffee_5L.png', 'Premium Cat Bentonite Litter Coffee 5L', 400.00, 300.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 19),
(9, 'product/litters/premium_cat_bentonite_lemon_5L.png', 'Premium Cat Bentonite Litter Lemon 5L', 600.00, 300.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 20),
(10, 'product/litters/premium_cat_bentonite_lemon_10L.png', 'Premium Cat Bentonite Litter Lemon 10L', 800.00, 600.00, 'Premium', 'Faster and higher absorption, more economic and lasts longer. Quick and firm clumping - won\'t break if your cat steps on it and easy to scoop away', 'Clumps do not stick to the cat litter tray bottom - prevent bacteria spreading', 'Really strong fragrance - the scent comes even from the closed bag. Special and unique formula for sealing bad urine smell - keeps your cat toilet fresh every day.', 'Cat', 'Litter', 19),
(13, 'product/foods/Large-Breed-Lamb-Rice.png', 'Brit Care Adult Large Breed Dog Food Lamb & Rice 12Kg', 6000.00, 4500.00, 'Brit', 'Composition: lamb meat meal (38%), rice (38%), chicken fat (preserved with tocopherols), dried apples, salmon oil (2%), natural flavors, brewer’s yeast, hydrolyzed crustacean shells (a source of glucosamine, 260 mg/kg), cartilage extract (a source of chondroitin, 160 mg/kg), mannanoligosaccharides (150 mg/kg), herbs and fruits (rosemary, cloves, citrus, curcuma, 150 mg/kg), fructooligosaccharides (100 mg/kg), yucca schidigera (100 mg/kg), inulin (90 mg/kg), milk thistle (75 mg/kg).', 'Analytical ingredients: crude protein 26%, fat content 14%, moisture 10%, crude ash 7.0%, crude fiber 2.8%, calcium 1.5%, phosphorus 1.2%.\r\nMetabolizable energy: 3,700 kcal/kg. Omega 3: 0.3%, Omega 6: 1.55%.', 'Nutritional composition: vitamin A (E672) 20,000 IU, vitamin D3 (E671) 1,500 IU, vitamin E (α-tocopherol) (3a700) 500 mg, vitamin C (E300) 200 mg, choline chloride 600 mg, biotin 0.6 mg, vitamin B1 1 mg, vitamin B2 4 mg, niacinamide (3a315) 12 mg, calcium panthothenate 10 mg, vitamin B6 (3a831) 1 mg, folic acid (3a316) 0.5 mg, vitamin B12 0.04 mg, zinc (E6) 80 mg, iron (E1) 70 mg, manganese (E5) 35 mg, iodine (E2) 0.65 mg, copper (E4) 15 mg, selenium (3b8.10) 0.25 mg.', 'Dog', 'food', 50),
(14, 'product/foods/Mynah.png', 'Smart Heart Mynah Bird Food 1Kg', 0.00, 250.00, 'Smart Heart', 'Dried Egg Yolk Source of high quality protein and rich in essential amino acids\r\nVitamin C Strengthens the immune system and helps reduce stress\r\nOmega 3 & Omega 6 fatty acid Helps Improve brain function\r\nVitamin A Improves visual acuity\r\nVitamin D3 Helps in the development of strong bones\r\nVitamin E Aids the reproductive system', '', '', 'Bird', 'Food', 10),
(15, 'product/shampoo/Gental-Dog-Conditioning.png', 'Ivy Dog Conditioning Gental Shampoo 250ml', 600.00, 500.00, 'Ivy', 'Dog Shampoo - The Best', '', '', 'Dog', 'Shampoo', 5),
(16, 'product/litters/Combo-2-1.png', '\r\nSaniCat Duo White & Silica Gel Mixed Cat Litter 15Litter', 0.00, 1350.00, 'SaniCat', 'SANICAT DUO WHITE\r\n\r\nGet the longest-lasting cat litter thanks to a combination of clumping litter with the fragrant scent of vanilla and mandarin orange.', 'Its thicker granules also prevent cats from dragging the litter outside the litter box.\r\n\r\nComposition: Thick Bentonite with vanilla and mandarin orange scent.', 'Silica Gel\r\n\r\nConvenient twice-per-week Scooping\r\nExcellent odor control\r\nEasy to remove clumps\r\nBright fun colors\r\nClumping silica gel cat litter', 'Cat', 'Litter', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `email`, `password`, `gender`, `address`, `phone`) VALUES
('admin', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '', '', '+880'),
('iftiazahmed', 'Iftiaz Ahmed', 'iftiaz.ahmed@yahoo.com', '4e1ce7c5f2a15f1a129d00ee5f1cdd55', 'Male', 'House: 29, Kabi Jashimuddin Road, North Kamalapur, Motijheel, Dhaka - 1217', '+8801780039225');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
