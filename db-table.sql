
--
-- Database: `technogenius`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `country`, `created`) VALUES
(1, 'Alfreds Futterkiste', 'Germany', '2021-04-16 16:51:56'),
(2, 'Berglunds snabbkop', 'Sweden', '2021-04-16 16:51:56'),
(3, 'Island Trading', 'UK', '2021-04-16 16:51:56'),
(4, 'Koniglich Essen', 'Germany', '2021-04-16 16:51:56'),
(5, 'Laughing Bacchus Winecellars', 'Canada', '2021-04-16 16:51:56'),
(6, 'Magazzini Alimentari Riuniti', 'Italy', '2021-04-16 16:51:56'),
(7, 'North/South', 'UK', '2021-04-16 16:51:56'),
(8, 'Paris specialites', 'France', '2021-04-16 16:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;