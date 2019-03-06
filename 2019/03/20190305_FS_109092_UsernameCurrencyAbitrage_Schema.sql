/*
Creator: 20190306@Casey
Task:    Implement IP Rule [Redmine ID: 109092]
Server:  bodb_FraudSensor
*/ 


---==========================================================================
ALTER TABLE ArbitrageTicketDetails
ADD	GraphDBGroupId INT

---==========================================================================
DROP TABLE tempPerformance

---==========================================================================
DROP FUNCTION IPAddressToInteger
