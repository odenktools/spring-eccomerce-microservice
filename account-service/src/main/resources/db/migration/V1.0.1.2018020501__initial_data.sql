INSERT INTO customers(id, email, password, permissions, activated, activation_code, activated_at, last_login, persist_code, reset_password_code, first_name, last_name, date_of_birth, address, postal_code, telephone, fax, salt, cart, wishlist, newsletter, ip, approved, safe, code, country_id, region_id, city_id, api_token, remember_token, created_at, updated_at, deleted_at) VALUES
(1, 'johndoe@customer.com', 'f13fe99180eddf56d101b4a2b92ffce6', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'John', 'Doe', NULL, 'Bandung', '40379', '085221658505', '', '', '', '', 1, '127.0.0.1', 1, 1, '', 1, 1, 1, 'w5QRV3xzRIbhrtG9IFPRjVMFZo8wLq0Aly3gulincrDKybF22FPXN57l3YGj', NULL, '2018-02-24 09:58:37', '2018-02-24 09:58:37', NULL);
INSERT INTO customers(id, email, password, permissions, activated, activation_code, activated_at, last_login, persist_code, reset_password_code, first_name, last_name, date_of_birth, address, postal_code, telephone, fax, salt, cart, wishlist, newsletter, ip, approved, safe, code, country_id, region_id, city_id, api_token, remember_token, created_at, updated_at, deleted_at) VALUES
(2, 'alfredjenkin@customer.com', 'f13fe99180eddf56d101b4a2b92ffce6', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Alfred', 'Jenkin', NULL, 'Jakarta', '50984', '081320216093', '', '', '', '', 1, '127.0.0.1', 1, 1, '', 1, 1, 1, 'iB3OYiOVp5z2oqE9VuJ7v0CKiJeNnVctYoyg4JsnUHpPe0DQAO8tISnRkbUz', NULL, '2018-02-24 09:58:37', '2018-02-24 09:58:37', NULL);

INSERT INTO customer_groups(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(1, 'default', 'Default', 'User is a customer', '2018-02-24 09:58:29', '2018-02-24 09:58:29', NULL);

INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(1, 'customer.update', 'Update Profile', 'Updates profile', '2018-02-24 09:58:56', '2018-02-24 09:58:56', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(2, 'customer.show', 'Show Profile', 'Retrieves a specific user', '2018-02-24 09:58:56', '2018-02-24 09:58:56', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(3, 'customer.order', 'Save Order Customer', 'Save Checkout Order Customer', '2018-02-24 09:58:56', '2018-02-24 09:58:56', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(4, 'payment-histories.show', 'Show Payment Histories', 'Show Payment Histories', '2018-02-24 09:58:56', '2018-02-24 09:58:56', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(5, 'shipping-histories.show', 'Show Shipping Histories', 'Show Shipping Histories', '2018-02-24 09:58:56', '2018-02-24 09:58:56', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(6, 'order-status.index', 'List of Order Status', 'Retrieves a list of order status', '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_permissions(id, name, display_name, description, created_at, updated_at, deleted_at) VALUES
(7, 'order-status.store', 'Create New Order Status', 'Creates a new order status', '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);

INSERT INTO customer_customer_group(customer_group_id, customer_id, created_at, updated_at, deleted_at) VALUES
(1, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_customer_group(customer_group_id, customer_id, created_at, updated_at, deleted_at) VALUES
(1, 2, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);

INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(1, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(2, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(3, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(4, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(5, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(6, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
INSERT INTO customer_group_customer_permission(customer_permission_id, customer_group_id, created_at, updated_at, deleted_at) VALUES
(7, 1, '2018-02-24 09:58:57', '2018-02-24 09:58:57', NULL);
