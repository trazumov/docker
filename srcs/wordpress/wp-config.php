<?php
/**
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('MARIADB_DATABASE') );

/** Database username */
define( 'DB_USER', getenv('MARIADB_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('MARIADB_PASSWORD') );

/** Database hostname mariadb or localhost */
define( 'DB_HOST', getenv('WORDPRESS_MARIADB_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**define( 'WP_ALLOW_REPAIR', true ); */

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
define('AUTH_KEY',         '!s?0#]W)6R:34iH&Q@u,zyx@a{~b.p8`]Y-fn#(0#QvU~%5*%UActu}zpJtn:>!L');
define('SECURE_AUTH_KEY',  '!K F|nr4px)UNKrJ2J;b@gQ`E-xF&4}C+,oh-8k]~sm(&70F<tS2w|2]6{1f_K|+');
define('LOGGED_IN_KEY',    'x-$k)uuzWCj%6%/{GqmqS^WFBI2k/fqP-x*-aHxa$D?X88U ]v-|gk@oZp &4dQ<');
define('NONCE_KEY',        'jC!O+,L~Cxg]vVv$c@&LtloHFzA$MM}NF2+rs;;ax4lrW&k9,q%3XUQwlT5}kd?J');
define('AUTH_SALT',        'sYwKkY,]hg}H85%/+kY`W-^iyx.aDidA<rXn0/(40JOkbTlC-aH@Vm6iN|eU@DwE');
define('SECURE_AUTH_SALT', '0hVPatc4@o;.X::s9S.rGFR9`%/Iu_G@|&OArvn[>zPrdKI/cQ=@I22ML&9!- N4');
define('LOGGED_IN_SALT',   'ybUU3W_EGAxAzObCG3<0P(<O[/:tSlkVV$C:OkJNe*|Os<<9xgr@N0?W6ZkCG?+k');
define('NONCE_SALT',       'EEbM@3v}h|K7|~*O=Q/SIY0FZ9j4s4hfVUXj_+6Pi`xRa=.p[$`Fmt6FLfWYfus.');

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
/**require_once ABSPATH . 'wp-settings.php';*/