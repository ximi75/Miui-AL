.class public Lcom/kingsoft/mail/providers/UIProvider;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/providers/UIProvider$ViewProxyExtras;,
        Lcom/kingsoft/mail/providers/UIProvider$SendFeedbackExtras;,
        Lcom/kingsoft/mail/providers/UIProvider$EditSettingsExtras;,
        Lcom/kingsoft/mail/providers/UIProvider$UpdateNotificationExtras;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationListIcon;,
        Lcom/kingsoft/mail/providers/UIProvider$DefaultReplyBehavior;,
        Lcom/kingsoft/mail/providers/UIProvider$MessageTextSize;,
        Lcom/kingsoft/mail/providers/UIProvider$SnapHeaderValue;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationViewMode;,
        Lcom/kingsoft/mail/providers/UIProvider$Swipe;,
        Lcom/kingsoft/mail/providers/UIProvider$AutoAdvance;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentType;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentRendition;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentContentValueKeys;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentDestination;,
        Lcom/kingsoft/mail/providers/UIProvider$AttachmentState;,
        Lcom/kingsoft/mail/providers/UIProvider$MessageOperations;,
        Lcom/kingsoft/mail/providers/UIProvider$SetCurrentAccountColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$MessageColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$MessageFlags;,
        Lcom/kingsoft/mail/providers/UIProvider$AccountCursorExtraKeys;,
        Lcom/kingsoft/mail/providers/UIProvider$CursorExtraKeys;,
        Lcom/kingsoft/mail/providers/UIProvider$CursorStatus;,
        Lcom/kingsoft/mail/providers/UIProvider$SpamWarningLinkType;,
        Lcom/kingsoft/mail/providers/UIProvider$SpamWarningLevel;,
        Lcom/kingsoft/mail/providers/UIProvider$DraftType;,
        Lcom/kingsoft/mail/providers/UIProvider$SendOrSaveMethodParamKeys;,
        Lcom/kingsoft/mail/providers/UIProvider$AccountCallMethods;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationOperations;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationCursorCommand;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationPhishing;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationFlags;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationPersonalLevel;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationPriority;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationSendingState;,
        Lcom/kingsoft/mail/providers/UIProvider$FolderColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$FolderCapabilities;,
        Lcom/kingsoft/mail/providers/UIProvider$FolderType;,
        Lcom/kingsoft/mail/providers/UIProvider$ConversationListQueryParameters;,
        Lcom/kingsoft/mail/providers/UIProvider$SearchQueryParameters;,
        Lcom/kingsoft/mail/providers/UIProvider$AccountCookieColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$QuickResponseColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$AccountColumns;,
        Lcom/kingsoft/mail/providers/UIProvider$AccountCapabilities;,
        Lcom/kingsoft/mail/providers/UIProvider$LastSyncResult;,
        Lcom/kingsoft/mail/providers/UIProvider$SyncStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_COLUMNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final ACCOUNTS_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

.field public static final ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.account"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.account"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.android.mail.action.update_notification"

.field public static final ALLOW_HIDDEN_FOLDERS_QUERY_PARAM:Ljava/lang/String; = "allowHiddenFolders"

.field public static final ATTACHMENT_CONTENT_ID_COLUMN:I = 0xd

.field public static final ATTACHMENT_CONTENT_TYPE_COLUMN:I = 0x3

.field public static final ATTACHMENT_CONTENT_URI_COLUMN:I = 0x7

.field public static final ATTACHMENT_DESTINATION_COLUMN:I = 0x5

.field public static final ATTACHMENT_DOWNLOADED_SIZE_COLUMN:I = 0x6

.field public static final ATTACHMENT_FLAGS_COLUMN:I = 0xc

.field public static final ATTACHMENT_INFO_DELIMITER:Ljava/lang/String; = "|"

.field public static final ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_INFO_SEPARATOR:Ljava/lang/String; = "\n"

.field public static final ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field public static final ATTACHMENT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_NAME_COLUMN:I = 0x0

.field public static final ATTACHMENT_PREVIEW_INTENT_COLUMN:I = 0x9

.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field public static final ATTACHMENT_SIZE_COLUMN:I = 0x1

.field public static final ATTACHMENT_STATE_COLUMN:I = 0x4

.field public static final ATTACHMENT_SUPPORTS_DOWNLOAD_AGAIN_COLUMN:I = 0xa

.field public static final ATTACHMENT_THUMBNAIL_URI_COLUMN:I = 0x8

.field public static final ATTACHMENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_TYPE_COLUMN:I = 0xb

.field public static final ATTACHMENT_URI_COLUMN:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mail.providers"

.field public static final AUTO_ADVANCE_MODE_LIST:Ljava/lang/String; = "list"

.field public static final AUTO_ADVANCE_MODE_NEWER:Ljava/lang/String; = "newer"

.field public static final AUTO_ADVANCE_MODE_OLDER:Ljava/lang/String; = "older"

.field public static final CONVERSATION_ACCOUNT_URI_COLUMN:I = 0x16

.field public static final CONVERSATION_ATTACHMENT_PREVIEWS_COUNT_COLUMN:I = 0x20

.field public static final CONVERSATION_ATTACHMENT_PREVIEW_STATES_COLUMN:I = 0x1f

.field public static final CONVERSATION_ATTACHMENT_PREVIEW_URI0_COLUMN:I = 0x1d

.field public static final CONVERSATION_ATTACHMENT_PREVIEW_URI1_COLUMN:I = 0x1e

.field public static final CONVERSATION_BASE_URI_COLUMN:I = 0x19

.field public static final CONVERSATION_COLOR_COLUMN:I = 0x15

.field public static final CONVERSATION_DATE_RECEIVED_MS_COLUMN:I = 0x6

.field public static final CONVERSATION_FLAGS_COLUMN:I = 0x10

.field public static final CONVERSATION_FLAG_LOADED_COLUMN:I = 0x1a

.field public static final CONVERSATION_HAS_ATTACHMENTS_COLUMN:I = 0x7

.field public static final CONVERSATION_ID_COLUMN:I = 0x0

.field public static final CONVERSATION_INFO_COLUMN:I = 0x5

.field public static final CONVERSATION_IS_PHISHING_COLUMN:I = 0x13

.field public static final CONVERSATION_IS_SPAM_COLUMN:I = 0x12

.field public static final CONVERSATION_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_MAILBOX_KEY_COLUMN:I = 0x18

.field public static final CONVERSATION_MESSAGE_LIST_URI_COLUMN:I = 0x2

.field public static final CONVERSATION_MUTED_COLUMN:I = 0x14

.field public static final CONVERSATION_NUM_DRAFTS_COLUMN:I = 0x9

.field public static final CONVERSATION_NUM_MESSAGES_COLUMN:I = 0x8

.field public static final CONVERSATION_PERSONAL_LEVEL_COLUMN:I = 0x11

.field public static final CONVERSATION_PRIORITY_COLUMN:I = 0xb

.field public static final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final CONVERSATION_PROJECTION_QUERY_CURSOR_WINDOW_LIMT:I = 0x5dc

.field public static final CONVERSATION_RAW_FOLDERS_COLUMN:I = 0xf

.field public static final CONVERSATION_READ_COLUMN:I = 0xc

.field public static final CONVERSATION_REMOTE_COLUMN:I = 0x1c

.field public static final CONVERSATION_SEEN_COLUMN:I = 0xd

.field public static final CONVERSATION_SENDER_INFO_COLUMN:I = 0x17

.field public static final CONVERSATION_SENDING_STATE_COLUMN:I = 0xa

.field public static final CONVERSATION_SERVERID_COLUMN:I = 0x1b

.field public static final CONVERSATION_SNIPPET_COLUMN:I = 0x4

.field public static final CONVERSATION_STARRED_COLUMN:I = 0xe

.field public static final CONVERSATION_SUBJECT_COLUMN:I = 0x3

.field public static final CONVERSATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_URI_COLUMN:I = 0x1

.field public static final DEFAULT_PARENT_QUERY_PARAMETER:Ljava/lang/String; = "defaultParent"

.field public static final EMAIL_SEPARATOR:Ljava/lang/String; = ","

.field public static final FOLDERS_PROJECTION:[Ljava/lang/String;

.field public static final FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

.field public static final FOLDER_BG_COLOR_COLUMN:I = 0x12

.field public static final FOLDER_CAPABILITIES_COLUMN:I = 0x5

.field public static final FOLDER_CHILD_FOLDERS_LIST_COLUMN:I = 0x8

.field public static final FOLDER_CONVERSATION_LIST_URI_COLUMN:I = 0x7

.field public static final FOLDER_FG_COLOR_COLUMN:I = 0x13

.field public static final FOLDER_FLAGS_COLUMN:I = 0x18

.field public static final FOLDER_HAS_CHILDREN_COLUMN:I = 0x4

.field public static final FOLDER_HIERARCHICAL_DESC_COLUMN:I = 0x15

.field public static final FOLDER_ICON_RES_ID_COLUMN:I = 0x10

.field public static final FOLDER_ID_COLUMN:I = 0x0

.field public static final FOLDER_LAST_MESSAGE_TIMESTAMP_COLUMN:I = 0x16

.field public static final FOLDER_LAST_SYNC_RESULT_COLUMN:I = 0xe

.field public static final FOLDER_LAST_SYNC_TIMESTAMP_COLUMN:I = 0x19

.field public static final FOLDER_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.folder"

.field public static final FOLDER_LOAD_MORE_URI_COLUMN:I = 0x14

.field public static final FOLDER_NAME_COLUMN:I = 0x3

.field public static final FOLDER_NOTIFICATION_ICON_RES_ID_COLUMN:I = 0x11

.field public static final FOLDER_PARENT_URI_COLUMN:I = 0x17

.field public static final FOLDER_PERSISTENT_ID_COLUMN:I = 0x1

.field public static final FOLDER_REFRESH_URI_COLUMN:I = 0xc

.field public static final FOLDER_SYNC_STATUS_COLUMN:I = 0xd

.field public static final FOLDER_SYNC_WINDOW_COLUMN:I = 0x6

.field public static final FOLDER_TOTAL_COUNT_COLUMN:I = 0xb

.field public static final FOLDER_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.folder"

.field public static final FOLDER_TYPE_COLUMN:I = 0xf

.field public static final FOLDER_UNREAD_COUNT_COLUMN:I = 0xa

.field public static final FOLDER_UNSEEN_COUNT_COLUMN:I = 0x9

.field public static final FOLDER_URI_COLUMN:I = 0x2

.field public static final FORCE_UI_NOTIFICATIONS_QUERY_PARAMETER:Ljava/lang/String; = "forceUiNotifications"

.field public static final INVALID_CONVERSATION_ID:J = -0x1L

.field public static final INVALID_MESSAGE_ID:J = -0x1L

.field public static final LABEL_QUERY_PARAMETER:Ljava/lang/String; = "label"

.field public static final LIST_PARAMS_QUERY_PARAMETER:Ljava/lang/String; = "listParams"

.field public static final LOCALCONTACT_CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_ACCOUNT_URI_COLUMN:I = 0x1c

.field public static final MESSAGE_ALWAYS_SHOW_IMAGES_COLUMN:I = 0x15

.field public static final MESSAGE_APPEND_REF_MESSAGE_CONTENT_COLUMN:I = 0x11

.field public static final MESSAGE_ATTACHMENTS_COLUMN:I = 0x1a

.field public static final MESSAGE_ATTACHMENT_INFO_SEPARATOR:Ljava/lang/String; = "\n"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_ATTACHMENT_LIST_URI_COLUMN:I = 0x13

.field public static final MESSAGE_BCC_COLUMN:I = 0x9

.field public static final MESSAGE_BODY_HTML_COLUMN:I = 0xc

.field public static final MESSAGE_BODY_SIZE:I = 0x29

.field public static final MESSAGE_BODY_TEXT_COLUMN:I = 0xd

.field public static final MESSAGE_CC_COLUMN:I = 0x8

.field public static final MESSAGE_CONVERSATION_URI_COLUMN:I = 0x3

.field public static final MESSAGE_CUSTOM_FROM_ADDRESS_COLUMN:I = 0x1b

.field public static final MESSAGE_DATE_RECEIVED_MS_COLUMN:I = 0xb

.field public static final MESSAGE_DRAFT_TYPE_COLUMN:I = 0x10

.field public static final MESSAGE_EMBEDS_EXTERNAL_RESOURCES_COLUMN:I = 0xe

.field public static final MESSAGE_EVENT_INTENT_COLUMN:I = 0x1d

.field public static final MESSAGE_FLAGS_COLUMN:I = 0x14

.field public static final MESSAGE_FLAG_CALC_BODY:I = 0x23

.field public static final MESSAGE_FLAG_LOADED:I = 0x26

.field public static final MESSAGE_FROM_COLUMN:I = 0x6

.field public static final MESSAGE_HAS_ATTACHMENTS_COLUMN:I = 0x12

.field public static final MESSAGE_ID_COLUMN:I = 0x0

.field public static final MESSAGE_IS_SENDING_COLUMN:I = 0x22

.field public static final MESSAGE_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.message"

.field public static final MESSAGE_MAILBOX_KEY:I = 0x27

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_QUOTE_INDEX:I = 0x24

.field public static final MESSAGE_READ_COLUMN:I = 0x16

.field public static final MESSAGE_REF_MESSAGE_URI_COLUMN:I = 0xf

.field public static final MESSAGE_REPLY_TO_COLUMN:I = 0xa

.field public static final MESSAGE_SEEN_COLUMN:I = 0x17

.field public static final MESSAGE_SERVER_ID_COLUMN:I = 0x1

.field public static final MESSAGE_SHORT_BODY:I = 0x25

.field public static final MESSAGE_SNIPPET_COLUMN:I = 0x5

.field public static final MESSAGE_SPAM_WARNING_LEVEL_COLUMN:I = 0x1f

.field public static final MESSAGE_SPAM_WARNING_LINK_TYPE_COLUMN:I = 0x20

.field public static final MESSAGE_SPAM_WARNING_STRING_ID_COLUMN:I = 0x1e

.field public static final MESSAGE_STARRED_COLUMN:I = 0x18

.field public static final MESSAGE_SUBJECT_COLUMN:I = 0x4

.field public static final MESSAGE_TO_COLUMN:I = 0x7

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.message"

.field public static final MESSAGE_URI_COLUMN:I = 0x2

.field public static final MESSAGE_VIA_DOMAIN_COLUMN:I = 0x21

.field public static final QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

.field public static final QUOTED_TEXT_OFFSET_COLUMN:I = 0x19

.field public static final SEEN_QUERY_PARAMETER:Ljava/lang/String; = "seen"

.field public static final SEQUENCE_QUERY_PARAMETER:Ljava/lang/String; = "seq"

.field public static final TURNCATED:I = 0x28

.field public static final UNDO_MESSAGE_LIST_COLUMN:I

.field public static final UNDO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string/jumbo v1, "_id"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "senderName"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountManagerName"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "providerVersion"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "folderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "fullFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "allFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "searchUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountFromAddresses"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "expungeMessageUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "undoUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountSettingsIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncStatus"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "helpIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "sendFeedbackIntentUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "reauthenticationUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "composeUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "mimeType"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "recentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "color"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "defaultRecentFolderListUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "manualSyncUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "viewProxyUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountCookieUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "signature"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "auto_advance"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "message_text_size"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "snap_headers"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "reply_behavior"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversation_list_icon"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversation_list_attachment_previews"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "confirm_delete"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "confirm_archive"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "confirm_send"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "default_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "default_inbox_name"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "force_reply_from_default"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "max_attachment_size"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "swipe"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "priority_inbox_arrows_enabled"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "setup_intent_uri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversation_view_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "veiled_address_pattern"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "updateSettingsUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "enableMessageTransforms"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncAuthority"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "quickResponseUri"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "move_to_inbox"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "protocol"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    .line 186
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "capabilities"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    .line 193
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_COLUMNS_NO_CAPABILITIES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    .line 618
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "quickResponse"

    aput-object v1, v0, v4

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    .line 635
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "cookie"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

    .line 682
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "persistentId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "folderUri"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "hasChildren"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "capabilities"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "syncWindow"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "conversationListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "childFoldersListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "unseenCount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "refreshUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "lastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "iconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "notificationIconResId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "bgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "fgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "loadMoreUri"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "hierarchicalDesc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "lastMessageTimestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "parentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "lastSyncTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 711
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string/jumbo v1, "unreadSenders"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

    .line 985
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "conversationUri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "messageListUri"

    aput-object v1, v0, v5

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "conversationInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "numMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "numDrafts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sendingState"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "rawFolders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "conversationFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "spam"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "phishing"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "accountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "senderInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "conversationBaseUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "remote"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "attachmentPreviewUri0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "attachmentPreviewUri1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "attachmentPreviewStates"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "attachmentPreviewsCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1024
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "senderInfo"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->LOCALCONTACT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 1587
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "serverMessageId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "messageUri"

    aput-object v1, v0, v5

    const-string/jumbo v1, "conversationId"

    aput-object v1, v0, v6

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "replyToAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "bodyHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "bodyText"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "draftType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "appendRefMessageContent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "attachmentListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "messageFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "alwaysShowImages"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "customFrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "messageAccountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "eventIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "spamWarningString"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "spamWarningLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "spamWarningLinkType"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "viaDomain"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "isSending"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "flagCalcBody"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "quoteIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "shortBody"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "turncated"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "messageSize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1960
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v4

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v5

    const-string/jumbo v1, "contentType"

    aput-object v1, v0, v6

    const-string/jumbo v1, "state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "downloadedSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "contentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thumbnailUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "previewIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "providerData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "supportsDownloadAgain"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "contentId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "downloadFailureReason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 2000
    const-string/jumbo v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_INFO_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 2004
    const-string/jumbo v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_INFO_DELIMITER_PATTERN:Ljava/util/regex/Pattern;

    .line 2247
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "messageListUri"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/mail/providers/UIProvider;->UNDO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2428
    return-void
.end method
