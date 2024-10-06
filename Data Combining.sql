----- combining all the 12 months data tables

CREATE TABLE IF NOT EXISTS combined_data_2023 AS (
  SELECT * FROM jan_data
  UNION ALL
  SELECT * FROM feb_data
  UNION ALL
  SELECT * FROM mar_data
  UNION ALL
  SELECT * FROM apr_data
  UNION ALL
  SELECT * FROM may_data
  UNION ALL
  SELECT * FROM jun_data
  UNION ALL
  SELECT * FROM jul_data
  UNION ALL
  SELECT * FROM aug_data
  UNION ALL
  SELECT * FROM sep_data
  UNION ALL
  SELECT * FROM oct_data
  UNION ALL
  SELECT * FROM nov_data 
  UNION ALL
  SELECT * FROM dec_data
);

Select * From combined_data_2023