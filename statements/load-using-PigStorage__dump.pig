some_alias = LOAD 'pig_statement_examples/load_data.csv' USING PigStorage(',');

DUMP some_alias;

-- DUMP prints
--
-- (foo,bar,baz)
-- (one,two,three)
