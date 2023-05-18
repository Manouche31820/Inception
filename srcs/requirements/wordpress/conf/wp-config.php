<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'ebaraton' );

/** Database password */
define( 'DB_PASSWORD', 'mdp' );

/** Database hostname */
define( 'DB_HOST', '172.0.0.4:<strong>3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'c@f9G--QW>+aJ[|GQ2sU6M$#%^1B)6f{rD}E:p^1`D_^`F.#)T4Jb4cHDli,8&?' );
define( 'SECURE_AUTH_KEY',  'X9/$_q-pV[+j|5z5KW;Ul/8Y2M^$O]^sktBvnJd<#Kj{#O!&]5ft#|t-W5BtCXKQ' );
define( 'LOGGED_IN_KEY',    'jK?^]SlI-4@4 ~%c-E(W&yc}28oC|ZoHxS7V9?Lfh3g7VjM?w0s;)[K6Yg3q,foh' );
define( 'NONCE_KEY',        '_W<m#}i wKw D)}`p%N-Qx+`:I,K13Y;}|5NL>3%Mc9^Fbh5M5R-f,O,Lh%pOXVj' );
define( 'AUTH_SALT',        'xlFb.=XQ1(8c90W`&jKq|`q}tE0UM^O+zY4-N0Ie&ogX9kD;0bW^Q1TjgSfCtP>y' );
define( 'SECURE_AUTH_SALT', 'Hs*Cv.?nN`TgT/xtjEB(}rq 6e8^w[fR`]JtCFab==2J{v:8Wm&>K^<Iy3$*!:x8' );
define( 'LOGGED_IN_SALT',   '{5=Y5o5OJ$dMF*16-+7RVu@1+__]wQD`gUJ*6_[+zP<VK-w6)uLr,))<P[)%+x0M' );
define( 'NONCE_SALT',       '}?{JXto20C60%yT&fKc8=7!-E!tGZ#z>=B?c$W7,RX-Iv3qy0ChKOy`Pnb}w*_Lj' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
