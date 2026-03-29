SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `blog_posts` (`id`, `title`, `slug`, `content`, `excerpt`, `cover_image`, `author_id`, `is_published`, `published_at`, `created_at`, `updated_at`) VALUES
('0f16ae57-0409-4e07-b97f-d565c1db4eac', 'Test', 'test', 'test', 'test', NULL, '454ee814-85c8-459a-94bf-a6e63affef61', 1, '2026-03-26 20:41:23', '2026-03-26 19:41:23', '2026-03-26 19:41:23');
INSERT INTO `cars` (`id`, `brand`, `model`, `year`, `slug`, `category`, `fuel`, `transmission`, `seats`, `doors`, `horsepower`, `engine_cc`, `color`, `license_plate`, `vin`, `mileage`, `price_per_day`, `price_per_week`, `deposit`, `description`, `features`, `is_available`, `is_featured`, `sort_order`, `created_at`, `updated_at`) VALUES
('188e519e-3df9-4fc6-89dc-4ef87f1c080f', 'Peugeot', '208', 2023, 'peugeot-208-2023', 'economy', 'petrol', 'manual', 5, 4, 100, 1199, 'Red', '', NULL, 8000, 25.00, 120.00, 75.00, 'Stylish and fuel-efficient Peugeot 208 for city adventures.', '[\"AC\",\"Bluetooth\",\"USB\",\"Parking Sensors\",\"Sunroof\",\"GPS\",\"Leather Seats\",\"Keyless Entry\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-28 15:47:21'),
('385f2069-53e8-47a4-8f52-43e5ab4dc028', 'Renault', 'Clio', 2023, 'renault-clio-2023', 'economy', 'petrol', 'manual', 5, 4, 90, 999, 'Orange', '10-012-JJ', NULL, 5000, 25.00, 150.00, 75.00, 'Compact Renault Clio - nimble and economical.', '[\"AC\",\"Bluetooth\",\"USB\",\"Parking Sensors\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('425adca4-f119-4052-a08c-0b817b848f8d', 'Audi', 'A4', 2022, 'audi-a4-2022', 'sedan', 'diesel', 'automatic', 5, 4, 190, 1968, 'Blue', '05-567-EE', NULL, 30000, 70.00, 420.00, 250.00, 'Refined Audi A4 with quattro-like precision.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Leather Seats\",\"Cruise Control\",\"Parking Sensors\",\"Virtual Cockpit\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('60ee84d7-8714-42a6-862d-0717ea07380e', 'Skoda', 'Octavia', 2023, 'skoda-octavia-2023', 'compact', 'diesel', 'manual', 5, 4, 150, 1968, 'White', '07-789-GG', NULL, 18000, 35.00, 210.00, 100.00, 'Spacious Skoda Octavia - great value and comfort.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Cruise Control\",\"Parking Sensors\",\"Apple CarPlay\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('6a1d9f15-68eb-4ca0-b4ad-b52a733809c0', 'Mercedes-Benz', 'C-Class', 2023, 'mercedes-c-class-2023', 'luxury', 'diesel', 'automatic', 5, 4, 200, 1993, 'Black', '02-234-BB', NULL, 20000, 85.00, 500.00, 300.00, 'Elegant Mercedes C-Class with premium interior and advanced tech.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Leather Seats\",\"Cruise Control\",\"Parking Sensors\",\"Heated Seats\",\"Sunroof\"]', 1, 1, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('74bef780-a4d7-4070-9ecf-c098a35d859f', 'Volkswagen', 'Tiguan', 2022, 'volkswagen-tiguan-2022', 'suv', 'diesel', 'automatic', 5, 4, 150, 1968, 'Grey', '09-901-II', NULL, 22000, 50.00, 300.00, 150.00, 'Versatile VW Tiguan - ideal for family trips.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Cruise Control\",\"Parking Sensors\",\"Apple CarPlay\",\"All-Wheel Drive\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('cc9336bc-e07f-442f-9732-356622c7885b', 'Mercedes-Benz', 'GLE Coupe', 2023, 'mercedes-gle-coupe-2023', 'luxury', 'diesel', 'automatic', 5, 4, 330, 2925, 'Black', '08-890-HH', NULL, 15000, 120.00, 720.00, 500.00, 'The stunning Mercedes GLE Coupe - luxury meets performance.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Leather Seats\",\"Cruise Control\",\"Parking Sensors\",\"Heated Seats\",\"Sunroof\",\"360 Camera\",\"Ambient Lighting\"]', 1, 1, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('d7c4e068-4c9e-4f5f-9712-9cbcd5361f7c', 'Ford', 'Focus', 2022, 'ford-focus-2022', 'compact', 'petrol', 'manual', 5, 4, 125, 1498, 'Blue', '11-123-KK', NULL, 20000, 30.00, 180.00, 100.00, 'Dynamic Ford Focus with sporty handling.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Cruise Control\",\"Parking Sensors\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('e950073f-f7cf-410f-b63b-6028af8a1838', 'Toyota', 'RAV4', 2023, 'toyota-rav4-2023', 'suv', 'hybrid', 'automatic', 5, 4, 222, 2487, 'Silver', '04-456-DD', NULL, 10000, 55.00, 330.00, 200.00, 'Reliable Toyota RAV4 hybrid - perfect for Kosovo roads.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Cruise Control\",\"Parking Sensors\",\"All-Wheel Drive\",\"Apple CarPlay\"]', 1, 0, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('ed990bd4-a9db-4374-b89b-93fc7dda704c', 'BMW', '3 Series', 2022, 'bmw-3-series-2022', 'sedan', 'diesel', 'automatic', 5, 4, 190, 1995, 'Grey', '03-345-CC', NULL, 25000, 75.00, 450.00, 250.00, 'Sporty BMW 3 Series with dynamic handling.', '[\"GPS\",\"AC\",\"Bluetooth\",\"USB\",\"Leather Seats\",\"Cruise Control\",\"Parking Sensors\",\"Sport Mode\"]', 1, 1, 0, '2026-03-26 19:01:52', '2026-03-26 19:01:52');
INSERT INTO `car_expenses` (`id`, `car_id`, `category`, `description`, `amount`, `expense_date`, `vendor`, `created_by`, `created_at`) VALUES
('f1c69707-80ad-44c9-aecf-aaf7fc82ee92', '188e519e-3df9-4fc6-89dc-4ef87f1c080f', 'insurance', 'Sigurimi', 500.00, '2026-03-29', 'EuroSig', '454ee814-85c8-459a-94bf-a6e63affef61', '2026-03-28 11:12:17');
INSERT INTO `car_images` (`id`, `car_id`, `url`, `alt_text`, `is_primary`, `sort_order`, `created_at`) VALUES
('081ebc64-5016-49f7-8038-1d2dfcd384d5', '188e519e-3df9-4fc6-89dc-4ef87f1c080f', 'https://images.unsplash.com/photo-1609521263047-f8f205293f24?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:46'),
('0e56ae62-bddf-4520-b99c-672a7971c194', '425adca4-f119-4052-a08c-0b817b848f8d', 'https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:47'),
('20ee9bd6-2d6d-4930-8ad8-cf2edbae2c98', '188e519e-3df9-4fc6-89dc-4ef87f1c080f', 'https://images.unsplash.com/photo-1541899481282-d53bffe3c35d?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:46'),
('21bd76f4-0684-4fee-9b84-f95bd7fe278a', 'cc9336bc-e07f-442f-9732-356622c7885b', 'https://images.unsplash.com/photo-1580273916550-e323be2ae537?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:49'),
('286e8916-c29d-4899-8af3-af7a776b7ab7', '6a1d9f15-68eb-4ca0-b4ad-b52a733809c0', 'https://images.unsplash.com/photo-1617531653332-bd46c24f2068?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:49'),
('2f0d0b97-dfd3-46db-b70e-489bf109641d', 'd7c4e068-4c9e-4f5f-9712-9cbcd5361f7c', 'https://images.unsplash.com/photo-1551830820-330a71b99659?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:49'),
('33bf6645-c2fb-4ff6-9354-7a500979b3de', 'cc9336bc-e07f-442f-9732-356622c7885b', 'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:49'),
('3af6505e-707a-4712-9e51-9ebde59bca50', '425adca4-f119-4052-a08c-0b817b848f8d', 'https://images.unsplash.com/photo-1603584173870-7f23fdae1b7a?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:47'),
('4d16f534-eb2c-487b-a600-b2e1c702ed45', '60ee84d7-8714-42a6-862d-0717ea07380e', 'https://images.unsplash.com/photo-1590362891991-f776e747a588?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:48'),
('5a2592ac-b6c9-44aa-9987-d65c18ea5a1e', '385f2069-53e8-47a4-8f52-43e5ab4dc028', 'https://images.unsplash.com/photo-1544636331-e26879cd4d9b?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:47'),
('5b6bc099-1fd8-4903-a444-eb24dfc79fb5', '6a1d9f15-68eb-4ca0-b4ad-b52a733809c0', 'https://images.unsplash.com/photo-1553440569-bcc63803a83d?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:49'),
('5c31d777-f0fd-424e-a665-30cf0dcc41ee', '74bef780-a4d7-4070-9ecf-c098a35d859f', 'https://images.unsplash.com/photo-1519641471654-76ce0107ad1b?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:49'),
('7e9239a9-84e8-45a3-b621-6342ae8bc523', 'e950073f-f7cf-410f-b63b-6028af8a1838', 'https://images.unsplash.com/photo-1568844293986-8d0400f4745b?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:50'),
('987018e4-8b15-45d6-a0ac-8c66ead5f637', '6a1d9f15-68eb-4ca0-b4ad-b52a733809c0', 'https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:48'),
('98a40d2a-08e1-4db8-8199-d8ff0489399f', 'e950073f-f7cf-410f-b63b-6028af8a1838', 'https://images.unsplash.com/photo-1621007947382-bb3c3994e3fb?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:50'),
('9a3e9653-d845-43a7-b9cc-182d6d4336e8', '425adca4-f119-4052-a08c-0b817b848f8d', 'https://images.unsplash.com/photo-1614162692292-7ac56d7f373e?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:47'),
('a7f80f47-c235-4159-99e1-8142fd274a84', '74bef780-a4d7-4070-9ecf-c098a35d859f', 'https://images.unsplash.com/photo-1583121274602-3e2820c69888?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:49'),
('b374a377-e893-410e-b836-700a51e2e674', 'cc9336bc-e07f-442f-9732-356622c7885b', 'https://images.unsplash.com/photo-1563720223185-11003d516935?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:49'),
('ca2a9ebf-8c2f-44e5-8380-734f30908089', 'ed990bd4-a9db-4374-b89b-93fc7dda704c', 'https://images.unsplash.com/photo-1556189250-72ba954cfc2b?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:50'),
('cdeaa433-8ea0-4c60-8110-5757d34e74f5', '385f2069-53e8-47a4-8f52-43e5ab4dc028', 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:47'),
('d38a093f-5619-450a-ad64-aade51b60272', 'd7c4e068-4c9e-4f5f-9712-9cbcd5361f7c', 'https://images.unsplash.com/photo-1542362567-b07e54358753?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:49'),
('d64744fc-49d7-40f6-8f01-5055d8e74e4c', 'e950073f-f7cf-410f-b63b-6028af8a1838', 'https://images.unsplash.com/photo-1612825173281-9a193378527e?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:50'),
('dcdc3559-b5e8-4aec-a9f3-c6d909e79daa', '60ee84d7-8714-42a6-862d-0717ea07380e', 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?w=800&q=80', NULL, 0, 1, '2026-03-26 19:18:48'),
('e1719156-ff6d-437f-890d-8a3cf7bc8843', 'ed990bd4-a9db-4374-b89b-93fc7dda704c', 'https://images.unsplash.com/photo-1555215695-3004980ad54e?w=800&q=80', NULL, 1, 0, '2026-03-26 19:18:50'),
('e7e0e7bb-dcc2-4f75-856c-f897da355b38', 'ed990bd4-a9db-4374-b89b-93fc7dda704c', 'https://images.unsplash.com/photo-1520050206757-1c3e6e068e74?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:50'),
('f857ebb4-1017-42e8-b4b5-936214461bb5', '74bef780-a4d7-4070-9ecf-c098a35d859f', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&q=80', NULL, 0, 2, '2026-03-26 19:18:49');
INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `is_read`, `created_at`) VALUES
('1a3cbd2c-b628-44c5-9609-66c434a7783d', 'test', 'ili@gmail.com', '+38349888888', 'Rent', 'Per Audi A6', 1, '2026-03-28 11:36:12');
INSERT INTO `extras` (`id`, `name`, `description`, `price_per_day`, `icon`, `is_active`) VALUES
('28fd07e4-d770-4cc2-a40d-a8071b1b88b2', 'Full Insurance', 'Zero deductible comprehensive insurance', 8.00, 'shield', 1),
('80797fd4-d270-475b-8628-4df303df608d', 'GPS Navigation', 'Portable GPS device with Kosovo maps', 5.00, 'navigation', 1),
('c194db19-6c81-4a97-88fb-c7c5f997b7a5', 'Additional Driver', 'Register an additional driver', 10.00, 'user-plus', 1),
('fb592e8e-e54e-48a4-a106-ab4673029603', 'Child Seat', 'ISOFIX child safety seat (0-12 years)', 3.00, 'baby', 1);
INSERT INTO `locations` (`id`, `name`, `address`, `city`, `lat`, `lng`, `is_active`) VALUES
('3417c5f8-5b46-41a6-924e-5b52ed445b74', 'Drenas Center', 'Rruga Adem Jashari, Drenas', 'Drenas', 42.6271000, 20.8900000, 1),
('4284737f-f0f0-48ba-86bb-e1dc1730708c', 'Peja Center', 'Rruga Mbretëresha Teutë, Peja', 'Peja', 42.6593000, 20.2888000, 1),
('5cbce21a-cdf1-4528-adaa-756168582473', 'Pristina City Center', 'Bulevardi Nënë Tereza, Pristina', 'Pristina', 42.6629000, 21.1655000, 1),
('7e9e625b-5a1c-4586-a3f1-5a4e3f75cb95', 'Skopje Airport', 'Alexander the Great Airport, Skopje', 'Skopje', 41.9617000, 21.6214000, 1),
('8daf3cdb-3b33-4263-9c1e-a17d91884a67', 'Pristina Airport', 'Pristina International Airport Adem Jashari', 'Pristina', 42.5728000, 21.0358000, 1);
INSERT INTO `loyalty_rewards` (`id`, `name`, `description`, `type`, `value`, `points_cost`, `is_active`, `min_tier`) VALUES
('bce909ed-29fb-11f1-9ebb-c85b76df1d52', '5% Discount', 'Get 5% off your next rental', 'discount_percent', 5.00, 100, 1, 'bronze'),
('bce91a23-29fb-11f1-9ebb-c85b76df1d52', '10% Discount', 'Get 10% off your next rental', 'discount_percent', 10.00, 200, 1, 'silver'),
('bce91aba-29fb-11f1-9ebb-c85b76df1d52', 'Free Extra Day', 'Get one free extra day on your rental', 'free_day', 1.00, 300, 1, 'silver'),
('bce91b6c-29fb-11f1-9ebb-c85b76df1d52', '20% Discount', 'Get 20% off your next rental', 'discount_percent', 20.00, 500, 1, 'gold'),
('bce91bc6-29fb-11f1-9ebb-c85b76df1d52', 'Free Upgrade', 'Upgrade to next car category for free', 'upgrade', 1.00, 400, 1, 'gold'),
('bce91c1d-29fb-11f1-9ebb-c85b76df1d52', '€25 Off', 'Get €25 off your next rental', 'discount_fixed', 25.00, 250, 1, 'bronze');
INSERT INTO `maintenance_records` (`id`, `car_id`, `maintenance_type_id`, `status`, `scheduled_date`, `completed_date`, `mileage_at_service`, `next_due_mileage`, `next_due_date`, `cost`, `vendor`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
('9c5df2b8-4cef-4352-8ed8-04aef0edbfc6', '425adca4-f119-4052-a08c-0b817b848f8d', 'bce88f88-29fb-11f1-9ebb-c85b76df1d52', 'scheduled', '2026-09-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, '454ee814-85c8-459a-94bf-a6e63affef61', '2026-03-27 23:19:03', '2026-03-27 23:19:12'),
('c8bd0d9a-c100-46ef-853f-d0d2c612609f', 'e950073f-f7cf-410f-b63b-6028af8a1838', 'bce88fad-29fb-11f1-9ebb-c85b76df1d52', 'scheduled', '2026-03-29', NULL, NULL, NULL, NULL, NULL, 'Ariani', NULL, '454ee814-85c8-459a-94bf-a6e63affef61', '2026-03-28 11:13:01', '2026-03-28 11:13:01');
INSERT INTO `maintenance_types` (`id`, `name`, `description`, `interval_km`, `interval_days`, `estimated_cost`, `is_active`) VALUES
('bce882f1-29fb-11f1-9ebb-c85b76df1d52', 'Oil Change', 'Engine oil and filter replacement', 10000, 180, 50.00, 1),
('bce88d82-29fb-11f1-9ebb-c85b76df1d52', 'Tire Rotation', 'Rotate tires for even wear', 12000, 180, 30.00, 1),
('bce88e74-29fb-11f1-9ebb-c85b76df1d52', 'Brake Inspection', 'Check brake pads, rotors and fluid', 20000, 365, 80.00, 1),
('bce88ed1-29fb-11f1-9ebb-c85b76df1d52', 'Air Filter', 'Replace engine air filter', 20000, 365, 25.00, 1),
('bce88efd-29fb-11f1-9ebb-c85b76df1d52', 'Full Inspection', 'Complete vehicle safety inspection', NULL, 365, 150.00, 1),
('bce88f2f-29fb-11f1-9ebb-c85b76df1d52', 'Tire Replacement', 'Replace all four tires', 50000, NULL, 400.00, 1),
('bce88f88-29fb-11f1-9ebb-c85b76df1d52', 'Battery Check', 'Test and replace battery if needed', NULL, 365, 100.00, 1),
('bce88fad-29fb-11f1-9ebb-c85b76df1d52', 'AC Service', 'Air conditioning check and recharge', NULL, 365, 60.00, 1);
INSERT INTO `notification_log` (`id`, `reservation_id`, `user_id`, `type`, `channel`, `recipient`, `status`, `error_message`, `sent_at`, `created_at`) VALUES
('05bcaf4b-606c-41c9-afba-1a45929578ac', '3aa8e043-5cda-4b94-91e4-7f77e860b659', '976f9e56-8edf-4d26-930e-056297140cb6', 'booking_confirmation', 'whatsapp', '+38348999999', 'sent', NULL, '2026-03-27 23:20:08', '2026-03-27 23:20:08'),
('f084bf65-cf04-4195-8f69-886677314ce9', '3aa8e043-5cda-4b94-91e4-7f77e860b659', '976f9e56-8edf-4d26-930e-056297140cb6', 'status_change', 'whatsapp', '+38348999999', 'sent', NULL, '2026-03-27 23:21:00', '2026-03-27 23:21:00');
INSERT INTO `notification_templates` (`id`, `type`, `channel`, `template_name`, `template_body`, `is_active`) VALUES
('bce8d301-29fb-11f1-9ebb-c85b76df1d52', 'booking_confirmation', 'whatsapp', 'Booking Confirmed', 'Hi {{customer_name}}! Your reservation #{{reservation_no}} for {{car_name}} has been confirmed.\n\nPickup: {{pickup_date}} at {{pickup_location}}\nReturn: {{dropoff_date}}\nTotal: {{total_price}}\n\nThank you for choosing Nexora Rent a Car!', 1),
('bce8e19e-29fb-11f1-9ebb-c85b76df1d52', 'pickup_reminder', 'whatsapp', 'Pickup Reminder', 'Hi {{customer_name}}! Reminder: Your car pickup is tomorrow.\n\nCar: {{car_name}}\nDate: {{pickup_date}}\nLocation: {{pickup_location}}\n\nSee you soon!', 1),
('bce8e234-29fb-11f1-9ebb-c85b76df1d52', 'return_reminder', 'whatsapp', 'Return Reminder', 'Hi {{customer_name}}! Reminder: Your car return is tomorrow.\n\nCar: {{car_name}}\nReturn Date: {{dropoff_date}}\nLocation: {{dropoff_location}}\n\nThank you!', 1),
('bce8e38c-29fb-11f1-9ebb-c85b76df1d52', 'review_request', 'whatsapp', 'Review Request', 'Hi {{customer_name}}! Thank you for renting with us. We hope you enjoyed your {{car_name}}.\n\nWe would love your feedback! Please leave a review on our website.\n\nNexora Rent a Car', 1),
('bce8e3f3-29fb-11f1-9ebb-c85b76df1d52', 'status_change', 'whatsapp', 'Status Update', 'Hi {{customer_name}}! Your reservation #{{reservation_no}} status has been updated to: {{status}}.\n\nNexora Rent a Car', 1);
INSERT INTO `pricing_rules` (`id`, `name`, `type`, `car_id`, `category`, `multiplier`, `conditions`, `priority`, `is_active`, `start_date`, `end_date`, `created_at`) VALUES
('bce9648f-29fb-11f1-9ebb-c85b76df1d52', 'High Demand Surge', 'demand', NULL, NULL, 1.25, '{\"min_demand_percent\": 80}', 10, 1, NULL, NULL, '2026-03-27 16:40:44'),
('bce97206-29fb-11f1-9ebb-c85b76df1d52', 'Very High Demand', 'demand', NULL, NULL, 1.40, '\"{\\\"min_demand_percent\\\": 95}\"', 20, 1, '2026-03-30', '2026-04-09', '2026-03-27 16:40:44'),
('bce972ca-29fb-11f1-9ebb-c85b76df1d52', 'Last Minute Booking', 'last_minute', NULL, NULL, 1.15, '{\"days_before_pickup_max\": 1}', 5, 1, NULL, NULL, '2026-03-27 16:40:44'),
('bce97344-29fb-11f1-9ebb-c85b76df1d52', 'Early Bird Discount', 'advance_booking', NULL, NULL, 0.90, '{\"days_before_pickup_min\": 14}', 5, 1, NULL, NULL, '2026-03-27 16:40:44'),
('bce973af-29fb-11f1-9ebb-c85b76df1d52', 'Weekly Discount', 'duration', NULL, NULL, 0.85, '{\"min_days\": 7}', 3, 1, NULL, NULL, '2026-03-27 16:40:44');
INSERT INTO `reservations` (`id`, `reservation_no`, `user_id`, `car_id`, `pickup_location`, `dropoff_location`, `pickup_date`, `dropoff_date`, `status`, `total_days`, `daily_rate`, `extras_total`, `discount`, `total_price`, `guest_name`, `guest_email`, `guest_phone`, `notes`, `admin_notes`, `created_at`, `updated_at`, `loyalty_points_earned`, `loyalty_points_redeemed`) VALUES
('3aa8e043-5cda-4b94-91e4-7f77e860b659', 'DRC-20260327-3696', '976f9e56-8edf-4d26-930e-056297140cb6', '60ee84d7-8714-42a6-862d-0717ea07380e', '3417c5f8-5b46-41a6-924e-5b52ed445b74', '4284737f-f0f0-48ba-86bb-e1dc1730708c', '2026-03-28 10:00:00', '2026-03-30 08:00:00', 'active', 2, 35.00, 0.00, 0.00, 70.00, NULL, NULL, NULL, 'Car must be clean', NULL, '2026-03-27 23:18:26', '2026-03-27 23:21:00', 0, 0),
('42bd0b18-61a9-4f24-8f8e-96aaf0203fab', 'DRC-20260326-2616', NULL, '188e519e-3df9-4fc6-89dc-4ef87f1c080f', '4284737f-f0f0-48ba-86bb-e1dc1730708c', '4284737f-f0f0-48ba-86bb-e1dc1730708c', '2026-03-28 10:00:00', '2026-03-29 10:00:00', 'pending', 1, 25.00, 0.00, 0.00, 25.00, 'ilaz', 'ili@g.om', '383465466', NULL, NULL, '2026-03-26 23:54:57', '2026-03-26 23:54:57', 0, 0),
('cd139383-3316-455e-b929-bb7b7fcba839', 'DRC-20260326-6476', '3f6d8eb2-fff5-4be8-9d28-51b62a3cb1a6', '188e519e-3df9-4fc6-89dc-4ef87f1c080f', '4284737f-f0f0-48ba-86bb-e1dc1730708c', '4284737f-f0f0-48ba-86bb-e1dc1730708c', '2026-04-03 10:00:00', '2026-05-01 10:00:00', 'pending', 28, 25.00, 504.00, 0.00, 1204.00, NULL, NULL, NULL, NULL, NULL, '2026-03-26 19:31:33', '2026-03-26 19:31:33', 0, 0);
INSERT INTO `reservation_extras` (`id`, `reservation_id`, `extra_id`, `quantity`, `price`) VALUES
('82fab825-16bf-43fb-ae4e-0be98167de42', 'cd139383-3316-455e-b929-bb7b7fcba839', 'fb592e8e-e54e-48a4-a106-ab4673029603', 1, 84.00),
('ea1bc7c7-e21e-41cf-a2d8-2f7f13b613de', 'cd139383-3316-455e-b929-bb7b7fcba839', '80797fd4-d270-475b-8628-4df303df608d', 1, 140.00),
('f5c998ac-b17e-4013-8aa2-c94a8dd33ba6', 'cd139383-3316-455e-b929-bb7b7fcba839', 'c194db19-6c81-4a97-88fb-c7c5f997b7a5', 1, 280.00);
INSERT INTO `settings` (`key`, `value`) VALUES
('company_address', '\"Rruga Adem Jashari, Drenas, Kosovo\"'),
('company_email', '\"info@nexorarentacar.com\"'),
('company_name', '\"Nexora Rent a Car\"'),
('company_phone', '\"+383 44 123 456\"'),
('currency', '\"EUR\"'),
('working_hours_weekday', '\"08:00 - 20:00\"'),
('working_hours_weekend', '\"09:00 - 18:00\"');
INSERT INTO `users` (`id`, `email`, `password_hash`, `first_name`, `last_name`, `phone`, `role`, `avatar_url`, `is_verified`, `created_at`, `updated_at`) VALUES
('3f6d8eb2-fff5-4be8-9d28-51b62a3cb1a6', 'ilazgashi@gmail.com', '$2a$12$mir5imLbwnajhS7QEkzOQe4W9Ur.ezqBEJqyzTr0Ut4elrPlvyiRC', 'ilaz', 'Gashi', '+38349732127', 'customer', NULL, 0, '2026-03-26 19:25:50', '2026-03-26 19:25:50'),
('454ee814-85c8-459a-94bf-a6e63affef61', 'admin@drenasrentacar.com', '$2a$12$s99shYfMkn3rUhPAGkW1herGQjQPSrCkcj6eBpg/QmNple0kW3O2i', 'Admin', 'Drenas', '+383 44 123 456', 'owner', NULL, 1, '2026-03-26 19:01:52', '2026-03-26 19:01:52'),
('976f9e56-8edf-4d26-930e-056297140cb6', 'ili@gmail.com', '$2a$12$AncMIC6BwSAVBxdn46t5R.fA4a5qYIZJ2eiu3XRkRJFcZILluljeC', 'ili', 'gashi', '+38348999999', 'customer', NULL, 0, '2026-03-27 23:17:05', '2026-03-27 23:17:05');

SET FOREIGN_KEY_CHECKS=1;
