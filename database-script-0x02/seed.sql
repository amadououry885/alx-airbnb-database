-- Insert into users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'Amadou', 'Diallo', 'amadou@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Oury', 'Diallo', 'oury@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('d91e83fc-38d3-4ff4-9c58-7d9c3fa91b63', 'Diallo', 'Gaoual', 'diallo@example.com', 'hashed_pw3', NULL, 'admin');

-- Insert into properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('a21c10e2-8b3f-42cb-93f0-aaaabbbbcccc', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Sunny Apartment', 'A lovely sunny apartment in the city center.', 'Koundara', 75.00),
  ('b32d21f3-7c4e-53dc-a4e1-bbbbccccdddd', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Beach House', 'A cozy beach house with ocean views.', 'Conakry', 120.00);

-- Insert into bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('c43e32g4-9d5f-64ed-b5f2-ccccddddeeee', 'a21c10e2-8b3f-42cb-93f0-aaaabbbbcccc', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', '2025-06-01', '2025-06-05', 300.00, 'confirmed'),
  ('d54f43h5-ae6g-75fe-c6g3-ddddeeeeffff', 'b32d21f3-7c4e-53dc-a4e1-bbbbccccdddd', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', '2025-07-01', '2025-07-04', 360.00, 'pending');

-- Insert into payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('e65g54i6-bf7h-86gf-d7h4-eeeeffff0000', 'c43e32g4-9d5f-64ed-b5f2-ccccddddeeee', 300.00, 'credit_card'),
  ('f76h65j7-cg8i-97hg-e8i5-ffff00001111', 'd54f43h5-ae6g-75fe-c6g3-ddddeeeeffff', 360.00, 'paypal');

-- Insert into reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('g87i76k8-dh9j-a8ih-f9j6-000011112222', 'a21c10e2-8b3f-42cb-93f0-aaaabbbbcccc', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 5, 'Amazing stay! Very clean and central.'),
  ('h98j87l9-eiak-b9ji-g0k7-111122223333', 'b32d21f3-7c4e-53dc-a4e1-bbbbccccdddd', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 4, 'Great beach access, but a bit far from stores.');

-- Insert into messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('i09k98m0-fjbl-cakj-h1l8-222233334444', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Hello! Is your beach house available next weekend?'),
  ('j10l09n1-gkcm-dblk-i2m9-333344445555', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'Yes, it’s available from Friday to Monday.');
