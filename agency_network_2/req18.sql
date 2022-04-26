SELECT surname, employee.name, email FROM employee JOIN agency ON employee.agency_code = agency.code WHERE agency.ratings > 6.0 ORDER BY surname, name, email;
