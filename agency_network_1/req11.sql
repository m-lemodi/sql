SELECT id, case WHEN end_date <= now() then 'Done' WHEN end_date > now() AND start_date <= now() THEN 'Ongoing' ELSE 'Booked' END AS "trip status" FROM booking ORDER BY id;
