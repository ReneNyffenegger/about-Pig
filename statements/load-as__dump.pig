some_alias = LOAD 'pig_statement_examples/load_data.csv' AS (col_1, col_2, col_3);

DUMP some_alias;

-- DUMP prints
--   
-- (foo,bar,baz,,)
-- (one,two,three,,)
