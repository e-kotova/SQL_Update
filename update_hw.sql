-- Написать запрос, который добавит слово Java в название должности (т.е. поле positions.name) у
-- должности которую занимают
-- ('PAUL TROUT','VLAD KOROLEV') и назначить им нового руководителя (например, employee c id´3) .
set sql_safe_updates=0;

update positions p
left join employee e
on p.position_id = e.position_id
set p.name = concat(name,"[JAVA]"), manager_id = 7
where  concat(first_name, " ", last_name) in ('PAUL TROUT', 'VLAD KOROLEV');

set sql_safe_updates=1;

