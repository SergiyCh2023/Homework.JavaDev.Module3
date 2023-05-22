SELECT "name", id as  PROJECT_COUNT  from clients
WHERE (id = (SELECT MAX(client_id) from projects));
