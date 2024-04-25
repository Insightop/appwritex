import 'package:dart_appwrite/models.dart';
import 'auth_provider.dart';
import 'key.dart';
import 'platform.dart';
import 'webhook.dart';

/// Project
class Project implements Model {
  /// Project ID.
  final String $id;

  /// Project creation date in ISO 8601 format.
  final String $createdAt;

  /// Project update date in ISO 8601 format.
  final String $updatedAt;

  /// Project name.
  final String name;

  /// Project description.
  final String description;

  /// Project team ID.
  final String teamId;

  /// Project logo file ID.
  final String logo;

  /// Project website URL.
  final String url;

  /// Company legal name.
  final String legalName;

  /// Country code in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1) two-character format.
  final String legalCountry;

  /// State name.
  final String legalState;

  /// City name.
  final String legalCity;

  /// Company Address.
  final String legalAddress;

  /// Company Tax ID.
  final String legalTaxId;

  /// Session duration in seconds.
  final int authDuration;

  /// Max users allowed. 0 is unlimited.
  final int authLimit;

  /// Max sessions allowed per user. 100 maximum.
  final int authSessionsLimit;

  /// Max allowed passwords in the history list per user. Max passwords limit allowed in history is 20. Use 0 for disabling password history.
  final int authPasswordHistory;

  /// Whether or not to check user's password against most commonly used passwords.
  final bool authPasswordDictionary;

  /// Whether or not to check the user password for similarity with their personal data.
  final bool authPersonalDataCheck;

  /// List of Auth Providers.
  final List<AuthProvider> oAuthProviders;

  /// List of Platforms.
  final List<Platform> platforms;

  /// List of Webhooks.
  final List<Webhook> webhooks;

  /// List of API Keys.
  final List<Key> keys;

  /// Status for custom SMTP
  final bool smtpEnabled;

  /// SMTP sender name
  final String smtpSenderName;

  /// SMTP sender email
  final String smtpSenderEmail;

  /// SMTP reply to email
  final String smtpReplyTo;

  /// SMTP server host name
  final String smtpHost;

  /// SMTP server port
  final int smtpPort;

  /// SMTP server username
  final String smtpUsername;

  /// SMTP server password
  final String smtpPassword;

  /// SMTP server secure protocol
  final String smtpSecure;

  Project({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.description,
    required this.teamId,
    required this.logo,
    required this.url,
    required this.legalName,
    required this.legalCountry,
    required this.legalState,
    required this.legalCity,
    required this.legalAddress,
    required this.legalTaxId,
    required this.authDuration,
    required this.authLimit,
    required this.authSessionsLimit,
    required this.authPasswordHistory,
    required this.authPasswordDictionary,
    required this.authPersonalDataCheck,
    required this.oAuthProviders,
    required this.platforms,
    required this.webhooks,
    required this.keys,
    required this.smtpEnabled,
    required this.smtpSenderName,
    required this.smtpSenderEmail,
    required this.smtpReplyTo,
    required this.smtpHost,
    required this.smtpPort,
    required this.smtpUsername,
    required this.smtpPassword,
    required this.smtpSecure,
  });

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      $id: map['\$id'],
      $createdAt: map['\$createdAt'],
      $updatedAt: map['\$updatedAt'],
      name: map['name'],
      description: map['description'],
      teamId: map['teamId'],
      logo: map['logo'],
      url: map['url'],
      legalName: map['legalName'],
      legalCountry: map['legalCountry'],
      legalState: map['legalState'],
      legalCity: map['legalCity'],
      legalAddress: map['legalAddress'],
      legalTaxId: map['legalTaxId'],
      authDuration: map['authDuration'],
      authLimit: map['authLimit'],
      authSessionsLimit: map['authSessionsLimit'],
      authPasswordHistory: map['authPasswordHistory'],
      authPasswordDictionary: map['authPasswordDictionary'],
      authPersonalDataCheck: map['authPersonalDataCheck'],
      oAuthProviders: List<AuthProvider>.from(
          map['oAuthProviders']?.map((x) => AuthProvider.fromMap(x))),
      platforms: List<Platform>.from(
          map['platforms']?.map((x) => Platform.fromMap(x))),
      webhooks:
          List<Webhook>.from(map['webhooks']?.map((x) => Webhook.fromMap(x))),
      keys: List<Key>.from(map['keys']?.map((x) => Key.fromMap(x))),
      smtpEnabled: map['smtpEnabled'],
      smtpSenderName: map['smtpSenderName'],
      smtpSenderEmail: map['smtpSenderEmail'],
      smtpReplyTo: map['smtpReplyTo'],
      smtpHost: map['smtpHost'],
      smtpPort: map['smtpPort'],
      smtpUsername: map['smtpUsername'],
      smtpPassword: map['smtpPassword'],
      smtpSecure: map['smtpSecure'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      '\$id': $id,
      '\$createdAt': $createdAt,
      '\$updatedAt': $updatedAt,
      'name': name,
      'description': description,
      'teamId': teamId,
      'logo': logo,
      'url': url,
      'legalName': legalName,
      'legalCountry': legalCountry,
      'legalState': legalState,
      'legalCity': legalCity,
      'legalAddress': legalAddress,
      'legalTaxId': legalTaxId,
      'authDuration': authDuration,
      'authLimit': authLimit,
      'authSessionsLimit': authSessionsLimit,
      'authPasswordHistory': authPasswordHistory,
      'authPasswordDictionary': authPasswordDictionary,
      'authPersonalDataCheck': authPersonalDataCheck,
      'oAuthProviders': oAuthProviders.map((x) => x.toMap()).toList(),
      'platforms': platforms.map((x) => x.toMap()).toList(),
      'webhooks': webhooks.map((x) => x.toMap()).toList(),
      'keys': keys.map((x) => x.toMap()).toList(),
      'smtpEnabled': smtpEnabled,
      'smtpSenderName': smtpSenderName,
      'smtpSenderEmail': smtpSenderEmail,
      'smtpReplyTo': smtpReplyTo,
      'smtpHost': smtpHost,
      'smtpPort': smtpPort,
      'smtpUsername': smtpUsername,
      'smtpPassword': smtpPassword,
      'smtpSecure': smtpSecure,
    };
  }
}

// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Auth\Auth;
// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;
// use Utopia\Config\Config;
// use Utopia\Database\Document;

// class Project extends Model
// {
//     /**
//      * @var bool
//      */
//     protected bool $public = false;

//     public function __construct()
//     {
//         $this
//             ->addRule('$id', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project ID.',
//                 'default' => '',
//                 'example' => '5e5ea5c16897e',
//             ])
//             ->addRule('$createdAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Project creation date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('$updatedAt', [
//                 'type' => self::TYPE_DATETIME,
//                 'description' => 'Project update date in ISO 8601 format.',
//                 'default' => '',
//                 'example' => self::TYPE_DATETIME_EXAMPLE,
//             ])
//             ->addRule('name', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project name.',
//                 'default' => '',
//                 'example' => 'New Project',
//             ])
//             ->addRule('description', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project description.',
//                 'default' => '',
//                 'example' => 'This is a new project.',
//             ])
//             ->addRule('teamId', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project team ID.',
//                 'default' => '',
//                 'example' => '1592981250',
//             ])
//             ->addRule('logo', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project logo file ID.',
//                 'default' => '',
//                 'example' => '5f5c451b403cb',
//             ])
//             ->addRule('url', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Project website URL.',
//                 'default' => '',
//                 'example' => '5f5c451b403cb',
//             ])
//             ->addRule('legalName', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Company legal name.',
//                 'default' => '',
//                 'example' => 'Company LTD.',
//             ])
//             ->addRule('legalCountry', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Country code in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1) two-character format.',
//                 'default' => '',
//                 'example' => 'US',
//             ])
//             ->addRule('legalState', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'State name.',
//                 'default' => '',
//                 'example' => 'New York',
//             ])
//             ->addRule('legalCity', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'City name.',
//                 'default' => '',
//                 'example' => 'New York City.',
//             ])
//             ->addRule('legalAddress', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Company Address.',
//                 'default' => '',
//                 'example' => '620 Eighth Avenue, New York, NY 10018',
//             ])
//             ->addRule('legalTaxId', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Company Tax ID.',
//                 'default' => '',
//                 'example' => '131102020',
//             ])
//             ->addRule('authDuration', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Session duration in seconds.',
//                 'default' => Auth::TOKEN_EXPIRATION_LOGIN_LONG,
//                 'example' => 60,
//             ])
//             ->addRule('authLimit', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Max users allowed. 0 is unlimited.',
//                 'default' => 0,
//                 'example' => 100,
//             ])
//             ->addRule('authSessionsLimit', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Max sessions allowed per user. 100 maximum.',
//                 'default' => 10,
//                 'example' => 10,
//             ])
//             ->addRule('authPasswordHistory', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Max allowed passwords in the history list per user. Max passwords limit allowed in history is 20. Use 0 for disabling password history.',
//                 'default' => 0,
//                 'example' => 5,
//             ])
//             ->addRule('authPasswordDictionary', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Whether or not to check user\'s password against most commonly used passwords.',
//                 'default' => false,
//                 'example' => true,
//             ])
//             ->addRule('authPersonalDataCheck', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Whether or not to check the user password for similarity with their personal data.',
//                 'default' => false,
//                 'example' => true,
//             ])
//             ->addRule('oAuthProviders', [
//                 'type' => Response::MODEL_AUTH_PROVIDER,
//                 'description' => 'List of Auth Providers.',
//                 'default' => [],
//                 'example' => [new \stdClass()],
//                 'array' => true,
//             ])
//             ->addRule('platforms', [
//                 'type' => Response::MODEL_PLATFORM,
//                 'description' => 'List of Platforms.',
//                 'default' => [],
//                 'example' => new \stdClass(),
//                 'array' => true,
//             ])
//             ->addRule('webhooks', [
//                 'type' => Response::MODEL_WEBHOOK,
//                 'description' => 'List of Webhooks.',
//                 'default' => [],
//                 'example' => new \stdClass(),
//                 'array' => true,
//             ])
//             ->addRule('keys', [
//                 'type' => Response::MODEL_KEY,
//                 'description' => 'List of API Keys.',
//                 'default' => [],
//                 'example' => new \stdClass(),
//                 'array' => true,
//             ])
//             ->addRule('smtpEnabled', [
//                 'type' => self::TYPE_BOOLEAN,
//                 'description' => 'Status for custom SMTP',
//                 'default' => false,
//                 'example' => false,
//                 'array' => false
//             ])
//             ->addRule('smtpSenderName', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP sender name',
//                 'default' => '',
//                 'example' => 'John Appwrite',
//             ])
//             ->addRule('smtpSenderEmail', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP sender email',
//                 'default' => '',
//                 'example' => 'john@appwrite.io',
//             ])
//             ->addRule('smtpReplyTo', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP reply to email',
//                 'default' => '',
//                 'example' => 'support@appwrite.io',
//             ])
//             ->addRule('smtpHost', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP server host name',
//                 'default' => '',
//                 'example' => 'mail.appwrite.io',
//             ])
//             ->addRule('smtpPort', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'SMTP server port',
//                 'default' => '',
//                 'example' => 25,
//             ])
//             ->addRule('smtpUsername', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP server username',
//                 'default' => '',
//                 'example' => 'emailuser',
//             ])
//             ->addRule('smtpPassword', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP server password',
//                 'default' => '',
//                 'example' => 'securepassword',
//             ])
//             ->addRule('smtpSecure', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'SMTP server secure protocol',
//                 'default' => '',
//                 'example' => 'tls',
//             ])
//         ;

//         $services = Config::getParam('services', []);
//         $auth = Config::getParam('auth', []);

//         foreach ($auth as $index => $method) {
//             $name = $method['name'] ?? '';
//             $key = $method['key'] ?? '';

//             $this
//                 ->addRule('auth' . ucfirst($key), [
//                     'type' => self::TYPE_BOOLEAN,
//                     'description' => $name . ' auth method status',
//                     'example' => true,
//                     'default' => true,
//                 ])
//             ;
//         }

//         foreach ($services as $service) {
//             if (!$service['optional']) {
//                 continue;
//             }

//             $name = $service['name'] ?? '';
//             $key = $service['key'] ?? '';

//             $this
//                 ->addRule('serviceStatusFor' . ucfirst($key), [
//                     'type' => self::TYPE_BOOLEAN,
//                     'description' => $name . ' service status',
//                     'example' => true,
//                     'default' => true,
//                 ])
//             ;
//         }
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'Project';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_PROJECT;
//     }

//     /**
//      * Get Collection
//      *
//      * @return string
//      */
//     public function filter(Document $document): Document
//     {
//         // SMTP
//         $smtp = $document->getAttribute('smtp', []);
//         $document->setAttribute('smtpEnabled', $smtp['enabled'] ?? false);
//         $document->setAttribute('smtpSenderEmail', $smtp['senderEmail'] ?? '');
//         $document->setAttribute('smtpSenderName', $smtp['senderName'] ?? '');
//         $document->setAttribute('smtpReplyTo', $smtp['replyTo'] ?? '');
//         $document->setAttribute('smtpHost', $smtp['host'] ?? '');
//         $document->setAttribute('smtpPort', $smtp['port'] ?? '');
//         $document->setAttribute('smtpUsername', $smtp['username'] ?? '');
//         $document->setAttribute('smtpPassword', $smtp['password'] ?? '');
//         $document->setAttribute('smtpSecure', $smtp['secure'] ?? '');

//         // Services
//         $values = $document->getAttribute('services', []);
//         $services = Config::getParam('services', []);

//         foreach ($services as $service) {
//             if (!$service['optional']) {
//                 continue;
//             }
//             $key = $service['key'] ?? '';
//             $value = $values[$key] ?? true;
//             $document->setAttribute('serviceStatusFor' . ucfirst($key), $value);
//         }

//         // Auth
//         $authValues = $document->getAttribute('auths', []);
//         $auth = Config::getParam('auth', []);

//         $document->setAttribute('authLimit', $authValues['limit'] ?? 0);
//         $document->setAttribute('authDuration', $authValues['duration'] ?? Auth::TOKEN_EXPIRATION_LOGIN_LONG);
//         $document->setAttribute('authSessionsLimit', $authValues['maxSessions'] ?? APP_LIMIT_USER_SESSIONS_DEFAULT);
//         $document->setAttribute('authPasswordHistory', $authValues['passwordHistory'] ?? 0);
//         $document->setAttribute('authPasswordDictionary', $authValues['passwordDictionary'] ?? false);
//         $document->setAttribute('authPersonalDataCheck', $authValues['personalDataCheck'] ?? false);

//         foreach ($auth as $index => $method) {
//             $key = $method['key'];
//             $value = $authValues[$key] ?? true;
//             $document->setAttribute('auth' . ucfirst($key), $value);
//         }

//         // OAuth Providers
//         $providers = Config::getParam('oAuthProviders', []);
//         $providerValues = $document->getAttribute('oAuthProviders', []);
//         $projectProviders = [];

//         foreach ($providers as $key => $provider) {
//             if (!$provider['enabled']) {
//                 // Disabled by Appwrite configuration, exclude from response
//                 continue;
//             }

//             $projectProviders[] = new Document([
//                 'key' => $key,
//                 'name' => $provider['name'] ?? '',
//                 'appId' => $providerValues[$key . 'Appid'] ?? '',
//                 'secret' => $providerValues[$key . 'Secret'] ?? '',
//                 'enabled' => $providerValues[$key . 'Enabled'] ?? false,
//             ]);
//         }

//         $document->setAttribute('oAuthProviders', $projectProviders);

//         return $document;
//     }
// }
