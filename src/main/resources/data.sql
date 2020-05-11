INSERT INTO role (code, name) SELECT 'ROLE_GUEST' AS code, 'Guest' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'ROLE_GUEST');
INSERT INTO role (code, name) SELECT 'ROLE_USER' AS code, 'User' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'ROLE_USER');
INSERT INTO role (code, name) SELECT 'ROLE_MANAGER' AS code, 'Manager' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'ROLE_MANAGER');
INSERT INTO role (code, name) SELECT 'ROLE_ADMIN' AS code, 'Administrator' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'ROLE_ADMIN');
INSERT INTO member (id, dept, email, in_use, name, password) SELECT 'admin', 'IT Infra', 'info@clinomics.com', 1, 'Administrator', '$10$8y7E2JJg7d68OQSFKw5rmePUCEd5NtyCKhoX5Ue.0n46veUaHw6Oq' FROM DUAL WHERE NOT EXISTS (SELECT * FROM member WHERE id = 'admin');
INSERT INTO member_role (member_id, role_id) SELECT 'admin', id FROM role WHERE code = 'ROLE_ADMIN' AND NOT EXISTS (SELECT * FROM member WHERE id = 'admin');