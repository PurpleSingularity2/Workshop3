DECLARE
    humans_num INTEGER := 10;
    test_cause cause.cause_name%Type;
    test_age human.age%Type;
BEGIN
    test_cause := 'Family Problems';
    test_age := '15-29';
    
    FOR i IN 1..humans_num LOOP
        INSERT INTO human(human_id, age, gender) VALUES (i, test_age, 'male');
        INSERT INTO suicide(human_id, cause_name, s_year, i_state, suicide_id) VALUES (i, test_cause, 2001, 'Island', i);
    END LOOP;
END;

    