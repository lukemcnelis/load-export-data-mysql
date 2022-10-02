LOAD DATA LOCAL INFILE 'PGA 3balls - D1 + D2.csv' INTO TABLE pga_3ball_d1_d2
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'  
(@pod_id,@tName,@p0_pod_pls,@p1_pod_pls,@p2_pod_pls) set pod_id=@pod_id,tourn=@tName,p0_pod_pls=@p0_pod_pls,p1_pod_pls=@p1_pod_pls,p2_pod_pls=@p2_pod_pls;