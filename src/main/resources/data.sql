INSERT INTO role (code, name) SELECT 'GUEST_00' AS code, '방문자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'GUEST_00');
INSERT INTO role (code, name) SELECT 'INPUT_20' AS code, '입고담당자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'INPUT_20');
INSERT INTO role (code, name) SELECT 'INPUT_40' AS code, '입고관리자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'INPUT_40');
INSERT INTO role (code, name) SELECT 'EXP_20' AS code, '검사담당자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'EXP_20');
INSERT INTO role (code, name) SELECT 'EXP_40' AS code, '검사실관리자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'EXP_40');
INSERT INTO role (code, name) SELECT 'EXP_80' AS code, '검사실책임자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'EXP_80');
INSERT INTO role (code, name) SELECT 'IT_99' AS code, 'IT관리자' AS name FROM DUAL WHERE NOT EXISTS (SELECT * FROM role WHERE code = 'IT_99');
INSERT INTO member (id, dept, email, in_use, name, password) SELECT 'admin', 'IT Infra', 'info@clinomics.com', 1, 'Administrator', '$10$8y7E2JJg7d68OQSFKw5rmePUCEd5NtyCKhoX5Ue.0n46veUaHw6Oq' FROM DUAL WHERE NOT EXISTS (SELECT * FROM member WHERE id = 'admin');
INSERT INTO member_role (member_id, role_id) SELECT 'admin', id FROM role WHERE code = 'IT_99' AND NOT EXISTS (SELECT * FROM member WHERE id = 'admin');