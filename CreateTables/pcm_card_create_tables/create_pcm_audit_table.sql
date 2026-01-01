create table pcm_cards_audit_dataset.audit_log(
	batch_id string,
	table_name string,
	record_count INT64,
	status string,
	load_ts timestamp 
);