<?PHP
if ( ! function_exists('is_https'))
{
    function is_https()
    {
        if ( ! empty($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) !== 'off')
        {
            return TRUE;
        }
        elseif (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && strtolower($_SERVER['HTTP_X_FORWARDED_PROTO']) === 'https')
        {
            return TRUE;
        }
        elseif ( ! empty($_SERVER['HTTP_FRONT_END_HTTPS']) && strtolower($_SERVER['HTTP_FRONT_END_HTTPS']) !== 'off')
        {
            return TRUE;
        }

        return FALSE;
    }
}

$is_https = is_https();

if ($is_https) {
    $base_url = "https://" . $_SERVER['HTTP_HOST'];
    $base_url .= str_replace(basename($_SERVER['SCRIPT_NAME']), "", $_SERVER['SCRIPT_NAME']);
} else {
    $base_url = "http://" . $_SERVER['HTTP_HOST'];
    $base_url .= str_replace(basename($_SERVER['SCRIPT_NAME']), "", $_SERVER['SCRIPT_NAME']);
}

$config['base_url'] = $base_url;
$config['site']['base_url'] = $base_url;

# Info Bar Config
$config['site']['info_bar_active'] = true;

# Using Ajax Field Validation, this is important if you want to use ajax check in your create account.
$config['site']['sqlHost'] = "localhost";
$config['site']['sqlUser'] = "root";
$config['site']['sqlPass'] = "";
$config['site']['sqlBD'] = "OT";

# Config Shop
$outfits_list = array();
$loyalty_title = array(
    50 => 'Scout',
    100 => 'Sentinel',
    200 => 'Steward',
    400 => 'Warden',
    1000 => 'Squire',
    2000 => 'Warrior',
    3000 => 'Keeper',
    4000 => 'Guardian',
    5000 => 'Sage
');
$config['shop']['newitemdays'] = 1;

# Configure your active payment method with this
$config['paymentsMethods'] = [
    'pagseguro' => true,
    'paypal' => false,
    'transfer' => true
];

# Pagseguro configs
$config['pagseguro']['testing'] = false;
$config['pagseguro']['lightbox'] = true;
$config['pagseguro']['tokentest'] = "token-test";

$config['pagseguro']['email'] = "mail@gmail.com";
$config['pagseguro']['token'] = "token-pagseguro";
$config['pagseguro']['produtoNome'] = 'Tibia Coins';
$config['pagseguro']['urlRedirect'] =  $config['base_url'];
$config['pagseguro']['urlNotification'] = $config['base_url'].'retpagseguro.php';
$config['donate']['offers'] = [
    500=>10,
    1000=>20,
    2000=>40,
    3000=>60,
    4000=>80,
	5000=>100,
	6000=>120,
	6500=>130,
	7000=>140,
	8000=>160,
	9000=>180,
	10000=>200,
];

# Bank transfer data
$config['banktransfer']['bank'] = "Caixa Econômica";
$config['banktransfer']['agency'] = "";
$config['banktransfer']['account'] = "";
$config['banktransfer']['name'] = "";
$config['banktransfer']['operation'] = 003;

# PayPal configs
$config['paypal']['email'] = "";

# Social Networks
$config['social']['facebook'] = "https://www.facebook.com/";
$config['social']['discord'] = "";

# Character Former name, time in days to show the former names
$config['site']['formerNames'] = 10;
$config['site']['formerNames_amount'] = 10;

# PAGE: characters.php
$config['site']['quests'] = array(
    "Addon Doll" => 19893,
    "Demon Oak" => 15127,
    "Divine Backpack" => 3101111,
    "Divine Earth Robe" => 3101215,
    "Divine Energy Robe" => 3101216,
    "Divine Ice Robe" => 3101217,
    "Divine Ice Weapons" => 3101203,
    "Dreanwalkers Boots" => 3211103,
    "Dwarven Set" => 1060524,
    "Ferumbras Amulet" => 3101107,
    "Firefly ring" => 3199107,
    "Firewalker Boots" => 2600,
    "Gill Set" => 1912542,
    "Mount Doll" => 19719,
    "Prismatic Set" => 1912542,
    "Rift Shield and Spellbook" => 111111,
    "Rift Weapons" => 11111,
    "Starligh Quest" => 3101102,
    "Yalahari Set" => 15128
);

# PAGE: whoisonline.php
$config['site']['private-servlist.com_server_id'] = 0;

# Account Maker Config
$config['site']['serverPath'] = "servidor/";
$config['site']['encryptionType'] = 'sha1';
$config['site']['useServerConfigCache'] = false;
$towns_list = array(
	1 => 'Secret City',
	2 => 'Thais',
	3 => 'Kazordoon',
	4 => 'Carlin',
	5 => 'Ab\'Dendriel',
	6 => 'Rookgaard',
	7 => 'Liberty Bay',
	8 => 'Port Hope',
	9 => 'Ankrahmun',
	10 => 'Darashia',
	11 => 'Edron',
	12 => 'Svargrond',
	13 => 'Yalahar',
	14 => 'Farmine',
	28 => 'Gray Beach',
	29 => 'Roshamuul',
	33 => 'Rathleton',
	34 => 'Krailos',
	51 => 'Dawnport',
	52 => 'Feyrist'
);

# Create Account Options
$config['site']['one_email'] = true;
$config['site']['create_account_verify_mail'] = false;
$config['site']['verify_code'] = true;
$config['site']['email_days_to_change'] = 3;
$config['site']['newaccount_premdays'] = 0;
$config['site']['send_register_email'] = true;
$config['site']['flash_client_enabled'] = false;

# Create Character Options
$config['site']['newchar_vocations']  = array(1 => 'Sorcerer Sample', 2 => 'Druid Sample', 3 => 'Paladin Sample', 4 => 'Knight Sample');
$config['site']['newchar_towns'] = array(1);
$config['site']['max_players_per_account'] = 7;

# Emails Config
$config['site']['send_emails'] = false;
$config['site']['mail_address'] = "suport@mail.com";
$config['site']['mail_senderName'] = "Suporte OT";
$config['site']['smtp_enabled'] = true;
$config['site']['smtp_host'] = "ssl://smtp.company.com.br";
$config['site']['smtp_port'] = 587;
$config['site']['smtp_auth'] = true;
$config['site']['smtp_user'] = "suport@mail.com";
$config['site']['smtp_pass'] = "pn6sYU[3ygPe";
$config['site']['smtp_secure'] = true;

# PAGE: accountmanagement.php
$config['site']['send_mail_when_change_password'] = true;
$config['site']['send_mail_when_generate_reckey'] = true;
$config['site']['email_time_change'] = 7;
$config['site']['daystodelete'] = 7;

# PAGE: guilds.php
$config['site']['guild_need_level'] = 150;
$config['site']['guild_need_pacc'] = false;
$config['site']['guild_image_size_kb'] = 50;
$config['site']['guild_description_chars_limit'] = 2000;
$config['site']['guild_description_lines_limit'] = 6;
$config['site']['guild_motd_chars_limit'] = 250;

# PAGE: adminpanel.php
$config['site']['access_admin_panel'] = 6;

# PAGE: latestnews.php
$config['site']['news_limit'] = 6;

# PAGE: killstatistics.php
$config['site']['last_deaths_limit'] = 40;

# PAGE: team.php
$config['site']['groups_support'] = array(2, 3, 4, 5);

# PAGE: highscores.php
$config['site']['groups_hidden'] = array(3, 4, 5);
$config['site']['accounts_hidden'] = array(1);

# PAGE: lostaccount.php
$config['site']['email_lai_sec_interval'] = 180;

# Layout Config
$config['site']['layout'] = 'tibiacom';
$config['site']['vdarkborder'] = '#505050';
$config['site']['darkborder'] = '#D4C0A1';
$config['site']['lightborder'] = '#F1E0C6';
