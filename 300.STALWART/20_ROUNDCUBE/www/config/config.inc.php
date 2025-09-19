<?php
    $config['plugins'] = [];
    $config['log_driver'] = 'stdout';
    $config['zipdownload_selection'] = true;
    $config['des_key'] = 'yNN4lrRLrbMMvg0Elbpy6sWD';
    $config['enable_spellcheck'] = true;
    $config['spellcheck_engine'] = 'pspell';
    $config['username_domain'] = 'landingdev.xyz';
    // include(__DIR__ . '/config.docker.inc.php');
    
	$config['db_dsnw'] = 'sqlite:////var/roundcube/db/sqlite.db?mode=0646';
	$config['db_dsnr'] = '';
	$config['imap_host'] = 'ssl://mail.landingdev.xyz:993';
	$config['smtp_host'] = 'tls://mail.landingdev.xyz:587';
	// $config['username_domain'] = '';
	$config['temp_dir'] = '/tmp/roundcube-temp';
	$config['skin'] = 'elastic';
	$config['request_path'] = '/';
	$config['plugins'] = array_filter(array_unique(array_merge($config['plugins'], ['archive', 'zipdownload'])));

