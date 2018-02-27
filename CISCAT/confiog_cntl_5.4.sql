USE [master]

GO

CREATE SERVER AUDIT [audit_cntl_5.4]
TO SECURITY_LOG

CREATE SERVER AUDIT SPECIFICATION [audit_cntl_specification_5.4]
FOR SERVER AUDIT [audit_cntl_5.4]
ADD (AUDIT_CHANGE_GROUP),
ADD (FAILED_LOGIN_GROUP),
ADD (SUCCESSFUL_LOGIN_GROUP)
WITH (STATE = ON);

ALTER SERVER AUDIT [audit_cntl_5.4]
WITH (STATE = ON);
