# The models from official repository

// General
public const MODEL_NONE = 'none';
public const MODEL_ANY = 'any';
public const MODEL_LOG = 'log';
public const MODEL_LOG_LIST = 'logList';
public const MODEL_ERROR = 'error';
public const MODEL_METRIC = 'metric';
public const MODEL_METRIC_LIST = 'metricList';
public const MODEL_METRIC_BREAKDOWN = 'metricBreakdown';
public const MODEL_ERROR_DEV = 'errorDev';
public const MODEL_BASE_LIST = 'baseList';
public const MODEL_USAGE_DATABASES = 'usageDatabases';
public const MODEL_USAGE_DATABASE = 'usageDatabase';
public const MODEL_USAGE_COLLECTION = 'usageCollection';
public const MODEL_USAGE_USERS = 'usageUsers';
public const MODEL_USAGE_BUCKETS = 'usageBuckets';
public const MODEL_USAGE_STORAGE = 'usageStorage';
public const MODEL_USAGE_FUNCTIONS = 'usageFunctions';
public const MODEL_USAGE_FUNCTION = 'usageFunction';
public const MODEL_USAGE_PROJECT = 'usageProject';

// Database
public const MODEL_DATABASE = 'database';
public const MODEL_DATABASE_LIST = 'databaseList';
public const MODEL_COLLECTION = 'collection';
public const MODEL_COLLECTION_LIST = 'collectionList';
public const MODEL_INDEX = 'index';
public const MODEL_INDEX_LIST = 'indexList';
public const MODEL_DOCUMENT = 'document';
public const MODEL_DOCUMENT_LIST = 'documentList';

// Database Attributes
public const MODEL_ATTRIBUTE = 'attribute';
public const MODEL_ATTRIBUTE_LIST = 'attributeList';
public const MODEL_ATTRIBUTE_STRING = 'attributeString';
public const MODEL_ATTRIBUTE_INTEGER = 'attributeInteger';
public const MODEL_ATTRIBUTE_FLOAT = 'attributeFloat';
public const MODEL_ATTRIBUTE_BOOLEAN = 'attributeBoolean';
public const MODEL_ATTRIBUTE_EMAIL = 'attributeEmail';
public const MODEL_ATTRIBUTE_ENUM = 'attributeEnum';
public const MODEL_ATTRIBUTE_IP = 'attributeIp';
public const MODEL_ATTRIBUTE_URL = 'attributeUrl';
public const MODEL_ATTRIBUTE_DATETIME = 'attributeDatetime';
public const MODEL_ATTRIBUTE_RELATIONSHIP = 'attributeRelationship';

// Users
public const MODEL_ACCOUNT = 'account';
public const MODEL_USER = 'user';
public const MODEL_USER_LIST = 'userList';
public const MODEL_SESSION = 'session';
public const MODEL_SESSION_LIST = 'sessionList';
public const MODEL_IDENTITY = 'identity';
public const MODEL_IDENTITY_LIST = 'identityList';
public const MODEL_TOKEN = 'token';
public const MODEL_JWT = 'jwt';
public const MODEL_PREFERENCES = 'preferences';

// MFA
public const MODEL_MFA_TYPE = 'mfaType';
public const MODEL_MFA_FACTORS = 'mfaFactors';
public const MODEL_MFA_OTP = 'mfaTotp';
public const MODEL_MFA_CHALLENGE = 'mfaChallenge';
public const MODEL_MFA_RECOVERY_CODES = 'mfaRecoveryCodes';

// Users password algos
public const MODEL_ALGO_MD5 = 'algoMd5';
public const MODEL_ALGO_SHA = 'algoSha';
public const MODEL_ALGO_SCRYPT = 'algoScrypt';
public const MODEL_ALGO_SCRYPT_MODIFIED = 'algoScryptModified';
public const MODEL_ALGO_BCRYPT = 'algoBcrypt';
public const MODEL_ALGO_ARGON2 = 'algoArgon2';
public const MODEL_ALGO_PHPASS = 'algoPhpass';

// Storage
public const MODEL_FILE = 'file';
public const MODEL_FILE_LIST = 'fileList';
public const MODEL_BUCKET = 'bucket';
public const MODEL_BUCKET_LIST = 'bucketList';

// Locale
public const MODEL_LOCALE = 'locale';
public const MODEL_LOCALE_CODE = 'localeCode';
public const MODEL_LOCALE_CODE_LIST = 'localeCodeList';
public const MODEL_COUNTRY = 'country';
public const MODEL_COUNTRY_LIST = 'countryList';
public const MODEL_CONTINENT = 'continent';
public const MODEL_CONTINENT_LIST = 'continentList';
public const MODEL_CURRENCY = 'currency';
public const MODEL_CURRENCY_LIST = 'currencyList';
public const MODEL_LANGUAGE = 'language';
public const MODEL_LANGUAGE_LIST = 'languageList';
public const MODEL_PHONE = 'phone';
public const MODEL_PHONE_LIST = 'phoneList';

// Messaging
public const MODEL_PROVIDER = 'provider';
public const MODEL_PROVIDER_LIST = 'providerList';
public const MODEL_MESSAGE = 'message';
public const MODEL_MESSAGE_LIST = 'messageList';
public const MODEL_TOPIC = 'topic';
public const MODEL_TOPIC_LIST = 'topicList';
public const MODEL_SUBSCRIBER = 'subscriber';
public const MODEL_SUBSCRIBER_LIST = 'subscriberList';
public const MODEL_TARGET = 'target';
public const MODEL_TARGET_LIST = 'targetList';

// Teams
public const MODEL_TEAM = 'team';
public const MODEL_TEAM_LIST = 'teamList';
public const MODEL_MEMBERSHIP = 'membership';
public const MODEL_MEMBERSHIP_LIST = 'membershipList';

// VCS
public const MODEL_INSTALLATION = 'installation';
public const MODEL_INSTALLATION_LIST = 'installationList';
public const MODEL_PROVIDER_REPOSITORY = 'providerRepository';
public const MODEL_PROVIDER_REPOSITORY_LIST = 'providerRepositoryList';
public const MODEL_BRANCH = 'branch';
public const MODEL_BRANCH_LIST = 'branchList';
public const MODEL_DETECTION = 'detection';

// Functions
public const MODEL_FUNCTION = 'function';
public const MODEL_FUNCTION_LIST = 'functionList';
public const MODEL_RUNTIME = 'runtime';
public const MODEL_RUNTIME_LIST = 'runtimeList';
public const MODEL_DEPLOYMENT = 'deployment';
public const MODEL_DEPLOYMENT_LIST = 'deploymentList';
public const MODEL_EXECUTION = 'execution';
public const MODEL_EXECUTION_LIST = 'executionList';
public const MODEL_BUILD = 'build';
public const MODEL_BUILD_LIST = 'buildList'; // Not used anywhere yet
public const MODEL_FUNC_PERMISSIONS = 'funcPermissions';
public const MODEL_HEADERS = 'headers';

// Proxy
public const MODEL_PROXY_RULE = 'proxyRule';
public const MODEL_PROXY_RULE_LIST = 'proxyRuleList';

// Migrations
public const MODEL_MIGRATION = 'migration';
public const MODEL_MIGRATION_LIST = 'migrationList';
public const MODEL_MIGRATION_REPORT = 'migrationReport';
public const MODEL_MIGRATION_FIREBASE_PROJECT = 'firebaseProject';
public const MODEL_MIGRATION_FIREBASE_PROJECT_LIST = 'firebaseProjectList';

// Project
public const MODEL_PROJECT = 'project';
public const MODEL_PROJECT_LIST = 'projectList';
public const MODEL_WEBHOOK = 'webhook';
public const MODEL_WEBHOOK_LIST = 'webhookList';
public const MODEL_KEY = 'key';
public const MODEL_KEY_LIST = 'keyList';
public const MODEL_AUTH_PROVIDER = 'authProvider';
public const MODEL_AUTH_PROVIDER_LIST = 'authProviderList';
public const MODEL_PLATFORM = 'platform';
public const MODEL_PLATFORM_LIST = 'platformList';
public const MODEL_VARIABLE = 'variable';
public const MODEL_VARIABLE_LIST = 'variableList';
public const MODEL_VCS = 'vcs';
public const MODEL_SMS_TEMPLATE = 'smsTemplate';
public const MODEL_EMAIL_TEMPLATE = 'emailTemplate';

// Health
public const MODEL_HEALTH_STATUS = 'healthStatus';
public const MODEL_HEALTH_VERSION = 'healthVersion';
public const MODEL_HEALTH_QUEUE = 'healthQueue';
public const MODEL_HEALTH_TIME = 'healthTime';
public const MODEL_HEALTH_ANTIVIRUS = 'healthAntivirus';
public const MODEL_HEALTH_CERTIFICATE = 'healthCertificate';
public const MODEL_HEALTH_STATUS_LIST = 'healthStatusList';

// Console
public const MODEL_CONSOLE_VARIABLES = 'consoleVariables';
