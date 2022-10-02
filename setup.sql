-- Setup the PGA_3ball_D1_D2 database and create the basic table
CREATE DATABASE IF NOT EXISTS PGA_3ball_D1_D2;
USE PGA_3ball_D1_D2;
CREATE TABLE PGA_3ball_D1_D2 (
	pod_id VARCHAR(256),
	tourn VARCHAR(256),
	p0_pod_pls VARCHAR(256),
    p1_pod_pls VARCHAR(256),
    p2_pod_pls VARCHAR(256));