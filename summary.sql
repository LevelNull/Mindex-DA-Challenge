SELECT 
sum("boydYards")::integer as "Boyd Yards", 
sum("higginsYards")::integer as "Higgens Yards",
sum("chaseYards")::integer as "Chase Yards",
concat(
    count(*) filter (where "result" = 'Win'),
    '-',
    count(*) filter (where "result" = 'Loss')
) as "Win/Loss"
FROM table_name
