INSERT INTO `oauth_client_details` VALUES (1,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'browser',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(2,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'account-service',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(3,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'tour-auth-service',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL),(4,1800,NULL,'TRUSTED_CLIENT','password,authorization_code,refresh_token,implicit,client_credentials',NULL,'tour-package',NULL,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',NULL,1,2592000,NULL,'read',NULL,NULL);



INSERT INTO `user` VALUES ('EMPLOYEE',1,25,'$2a$10$UIbd8.LNwiFnqNL2sklMoOIEPJC6SbJm9BHen2rRkVRXwYsxeJ/xi',20000,'dileep',1,1);

INSERT INTO `privilege` VALUES (1,'ADMIN'),(2,'Write');

INSERT INTO `role` VALUES (1,'ADMIN','ADMIN',null);

INSERT INTO `users_roles` VALUES (1,1);

INSERT INTO `roles_priviges` VALUES (1,1);
