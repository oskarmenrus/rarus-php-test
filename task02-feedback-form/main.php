<?php

if (isset($_POST['email'])) {
	$domain = substr($_POST['email'], (strpos($_POST['email'], '@') + 1));
	if ($domain == 'gmail.com') {
		echo "Регистрация с доменом gmail.com запрещена!";
	} else {
		echo "Форма успешно отправлена!";
	}
}

/*
sleep(10);
	$redirect = isset($_SERVER['HTTP_REFERER'])? $_SERVER['HTTP_REFERER']:'form.html';
	header("Location: $redirect");
 */

?>