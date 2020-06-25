CREATE OR REPLACE VIEW shc AS 
    SELECT
        cause.cause_name,
        suicide.s_year,
        human.age
    FROM suicide
        JOIN cause ON  cause.cause_name = suicide.suicide_id
        JOIN suicide ON suicide.suicide_id = human.human_id;
        