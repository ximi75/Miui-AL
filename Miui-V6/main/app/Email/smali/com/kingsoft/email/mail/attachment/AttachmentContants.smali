.class public Lcom/kingsoft/email/mail/attachment/AttachmentContants;
.super Ljava/lang/Object;
.source "AttachmentContants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/AttachmentContants$SortOrder;
    }
.end annotation


# static fields
.field public static final ACTION_ATTACHMENT_INLINELOAD:Ljava/lang/String; = "com.android.emailcommon.attachment.inlineLoad"

.field public static final ACTIVITY_NOT_FOUND_TAG:Ljava/lang/String; = "activityNotFound"

.field public static final ATTACHMENTURI_PREFIX:Ljava/lang/String;

.field public static final ATTACHMENT_DELETED:I = 0x1

.field public static final ATTACHMENT_FORMART_ICON_RES:[I

.field public static final ATTACHMENT_MGR_PROJECTION:[Ljava/lang/String;

.field public static final ATTACHMENT_NOT_DELETED:I = 0x0

.field public static ATTACHMENT_SAVE_STATES_ICON_RES:[I = null

.field public static final ATT_FROM_COLUMNS:[Ljava/lang/String;

.field public static final ATT_TO_VIEWS:[I

.field public static final BLOCKED_TAG:Ljava/lang/String; = "blocked"

.field public static final CANCEL_CLICK_ON_DOWNLOAD:I = 0x3

.field public static final CANCEL_CLICK_ON_ITEM:I = 0x2

.field public static final CANCEL_DOWNLOAD_TAG:Ljava/lang/String; = "cancelDownload"

.field public static final CANCEL_EXCEPTION_MESSAGE:Ljava/lang/String; = "cancel"

.field public static final CMD_CURSOR_LOAD_DONE:I = 0x104

.field public static final CMD_CURSOR_LOAD_START:I = 0x103

.field public static final CMD_DELETE_ATTACHMENT:I = 0x303

.field public static final CMD_DOWNLOAD_CANCEL:I = 0x102

.field public static final CMD_DOWNLOAD_CLEAR:I = 0x105

.field public static final CMD_DOWNLOAD_START:I = 0x101

.field public static final CMD_OPEN_OPTION_MENU:I = 0x201

.field public static final CMD_START_MAIL_LIST:I = 0x304

.field public static final COPY_BUFFER_SIZE:I = 0x4000

.field public static final DIALOG_TYPE_ACTIVITY_NOT_FOUND:I = 0x4

.field public static final DIALOG_TYPE_BLOCK:I = 0x6

.field public static final DIALOG_TYPE_CANCEL_DOWNLOAD:I = 0x2

.field public static final DIALOG_TYPE_DOWNLOAD:I = 0x1

.field public static final DIALOG_TYPE_DOWNLOAD_ALL:I = 0x5

.field public static final DIALOG_TYPE_NETWORK_ERR:I = 0x3

.field public static final DOWNLOAD_ALL_SHOWING_THRESHOLD:I = 0x1

.field public static final DOWNLOAD_ALL_TAG:Ljava/lang/String; = "downloadAll"

.field public static final DOWNLOAD_CLICK_ON_DOWNLOAD:I = 0x1

.field public static final DOWNLOAD_CLICK_ON_ITEM:I = 0x0

.field public static final DOWNLOAD_TAG:Ljava/lang/String; = "download"

.field public static final EXTRA_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final EXTRA_CLICK_ON:Ljava/lang/String; = "clickOn"

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "dialogType"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final FILE_ICON_AMR:I = 0x0

.field public static final FILE_ICON_APK:I = 0x1

.field public static final FILE_ICON_AUDIO:I = 0x2

.field public static final FILE_ICON_DEFAULT:I = 0x3

.field public static final FILE_ICON_DOC:I = 0x4

.field public static final FILE_ICON_DPS:I = 0x5

.field public static final FILE_ICON_DPT:I = 0x6

.field public static final FILE_ICON_ET:I = 0x7

.field public static final FILE_ICON_ETT:I = 0x8

.field public static final FILE_ICON_FOLDER:I = 0xa

.field public static final FILE_ICON_FOLDER_FAV:I = 0x9

.field public static final FILE_ICON_HTML:I = 0x1b

.field public static final FILE_ICON_MID:I = 0xb

.field public static final FILE_ICON_MP3:I = 0xc

.field public static final FILE_ICON_PDF:I = 0xd

.field public static final FILE_ICON_PICTURE:I = 0xe

.field public static final FILE_ICON_PPS:I = 0xf

.field public static final FILE_ICON_PPT:I = 0x10

.field public static final FILE_ICON_RAR:I = 0x11

.field public static final FILE_ICON_THEME:I = 0x12

.field public static final FILE_ICON_TXT:I = 0x13

.field public static final FILE_ICON_VCF:I = 0x14

.field public static final FILE_ICON_VIDEO:I = 0x15

.field public static final FILE_ICON_WAV:I = 0x16

.field public static final FILE_ICON_WMA:I = 0x17

.field public static final FILE_ICON_WPS:I = 0x18

.field public static final FILE_ICON_WPT:I = 0x19

.field public static final FILE_ICON_XLS:I = 0x1d

.field public static final FILE_ICON_XML:I = 0x1a

.field public static final FILE_ICON_ZIP:I = 0x1c

.field public static final HANDLEABLE_ATTACHMENT_COMPRESSED_FILE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANDLEABLE_ATTACHMENT_RAR_FILE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMG_LABEL_CID:Ljava/lang/String; = "cid:"

.field public static final INLINE_PATTERN_DOWNLOAD:Ljava/lang/String; = "<img[^>]*src=\"((content|file)(?-i):[^\"]*)\""

.field public static final INLINE_PATTERN_NOTDOWNLOAD:Ljava/lang/String; = "<img[^>]*src=\"cid(?-i):([^\"]*)\""

.field public static final JOINT_MESSAGE_COLUMN_ALIAS_ACCOUNT_EMAIL:Ljava/lang/String; = "accountEmail"

.field public static final JOINT_MESSAGE_COLUMN_ALIAS_DISPLAY_NAME:Ljava/lang/String; = "senderDisplayName"

.field public static final JOINT_MESSAGE_COLUMN_ALIAS_RECV_TIME:Ljava/lang/String; = "recvTime"

.field public static final JOINT_MESSAGE_COLUMN_ALIAS_SENDER_ADDRESS:Ljava/lang/String; = "senderAddress"

.field public static final JOINT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final MENU_SORT_BY_DATE:I = 0x4

.field public static final MENU_SORT_BY_DEFAULT:I = 0x0

.field public static final MENU_SORT_BY_MIME:I = 0x1

.field public static final MENU_SORT_BY_NAME:I = 0x2

.field public static final MENU_SORT_BY_SAVE_STATUS:I = 0x5

.field public static final MENU_SORT_BY_SENDER:I = 0x3

.field public static final MENU_SORT_BY_SIZE:I = 0x6

.field public static final MIME_AMR:Ljava/lang/String; = "audio/amr"

.field public static final MIME_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIME_AUDIO:Ljava/lang/String; = "application/audio"

.field public static final MIME_BMP:Ljava/lang/String; = "image/x-ms-bmp"

.field public static final MIME_DEFAULT:Ljava/lang/String; = ""

.field public static final MIME_DOC:Ljava/lang/String; = "application/msword"

.field public static final MIME_DOCX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

.field public static final MIME_DPS:Ljava/lang/String; = "application/dps"

.field public static final MIME_DPT:Ljava/lang/String; = "application/dpt"

.field public static final MIME_ET:Ljava/lang/String; = "application/et"

.field public static final MIME_ETT:Ljava/lang/String; = "application/ett"

.field public static final MIME_FLV:Ljava/lang/String; = "application/flv"

.field public static final MIME_FOLDER:Ljava/lang/String; = "application/folder"

.field public static final MIME_FOLDER_FAV:Ljava/lang/String; = "application/fav"

.field public static final MIME_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_MESSAGE_DELIVERY:Ljava/lang/String; = "message/delivery"

.field public static final MIME_MID:Ljava/lang/String; = "audio/midi"

.field public static final MIME_MKV:Ljava/lang/String; = "application/mkv"

.field public static final MIME_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final MIME_PDF:Ljava/lang/String; = "application/pdf"

.field public static final MIME_PICTURE:Ljava/lang/String; = "application/pic"

.field public static final MIME_PNG:Ljava/lang/String; = "image/png"

.field public static final MIME_PPS:Ljava/lang/String; = "application/vnd.ms-powerpoint"

.field public static final MIME_PPT:Ljava/lang/String; = "application/vnd.ms-powerpoint"

.field public static final MIME_PPTX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.presentationml.presentation"

.field public static final MIME_RAR:Ljava/lang/String; = "application/rar"

.field public static final MIME_RFC822_HEADERS:Ljava/lang/String; = "text/rfc822-headers"

.field public static final MIME_THEME:Ljava/lang/String; = "application/theme"

.field public static final MIME_TXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_VCF:Ljava/lang/String; = "text/x-vcard"

.field public static final MIME_VIDEO:Ljava/lang/String; = "application/video"

.field public static final MIME_WAV:Ljava/lang/String; = "audio/x-wav"

.field public static final MIME_WMA:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final MIME_WPS:Ljava/lang/String; = "application/wps"

.field public static final MIME_WPT:Ljava/lang/String; = "application/wpt"

.field public static final MIME_XLS:Ljava/lang/String; = "application/vnd.ms-excel"

.field public static final MIME_XLSX:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field public static final MIME_ZIP:Ljava/lang/String; = "application/zip"

.field public static final MIME_ZIP2:Ljava/lang/String; = "application/x-zip-compressed"

.field public static final NOT_ATTACHMENT_REQ:I = -0x1

.field public static final SQL_ESCAPECHARSET:Ljava/lang/String; = "/"

.field public static final UI_STABLE_ATTACHMENT:I = 0x64

.field public static final UI_STABLE_DELETE:I = 0x66

.field public static final UI_STABLE_MAIL:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/uiattachment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENTURI_PREFIX:Ljava/lang/String;

    .line 124
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_FORMART_ICON_RES:[I

    .line 158
    const-string/jumbo v0, "application/zip"

    const-string/jumbo v1, "application/x-zip-compressed"

    const-string/jumbo v2, "application/rar"

    const-string/jumbo v3, "application/x-rar-compressed"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->HANDLEABLE_ATTACHMENT_COMPRESSED_FILE_TYPES:Ljava/util/Set;

    .line 161
    const-string/jumbo v0, "application/rar"

    const-string/jumbo v1, "application/x-rar-compressed"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->HANDLEABLE_ATTACHMENT_RAR_FILE_TYPES:Ljava/util/Set;

    .line 165
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_SAVE_STATES_ICON_RES:[I

    .line 178
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "fileName"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mimeType"

    aput-object v1, v0, v8

    const-string/jumbo v1, "uiDownloadedSize"

    aput-object v1, v0, v9

    const-string/jumbo v1, "uiState"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "uiDownloadedSize"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "recvTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "senderDisplayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATT_FROM_COLUMNS:[Ljava/lang/String;

    .line 184
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATT_TO_VIEWS:[I

    .line 205
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "fileName"

    aput-object v1, v0, v8

    const-string/jumbo v1, "mimeType"

    aput-object v1, v0, v9

    const-string/jumbo v1, "size"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "uiState"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "uiDownloadedSize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "contentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "previewTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "snapshotPath"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_MGR_PROJECTION:[Ljava/lang/String;

    .line 215
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "IFNULL(fromList,\'\')"

    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "_id=messageKey"

    const-string/jumbo v4, "senderAddress"

    invoke-static {v1, v2, v3, v6, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "displayName"

    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "_id=messageKey"

    const-string/jumbo v4, "senderDisplayName"

    invoke-static {v1, v2, v3, v6, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, "timeStamp"

    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "_id=messageKey"

    const-string/jumbo v4, "recvTime"

    invoke-static {v1, v2, v3, v6, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string/jumbo v1, "mailboxKey"

    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "_id=messageKey"

    const-string/jumbo v4, "mailboxKey"

    invoke-static {v1, v2, v3, v6, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "emailAddress"

    const-string/jumbo v3, "Account"

    const-string/jumbo v4, "_id=accountKey"

    const-string/jumbo v5, "accountEmail"

    invoke-static {v2, v3, v4, v6, v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->JOINT_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void

    .line 124
    :array_0
    .array-data 4
        0x7f02014a
        0x7f02014b
        0x7f020154
        0x7f02014c
        0x7f02014d
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020154
        0x7f020154
        0x7f020155
        0x7f020156
        0x7f020157
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015b
        0x7f02015c
        0x7f02015d
        0x7f020154
        0x7f020154
        0x7f02015e
        0x7f02015f
        0x7f020161
        0x7f020153
        0x7f020162
        0x7f020160
    .end array-data

    .line 165
    :array_1
    .array-data 4
        0x7f02018f
        0x7f02018d
        0x7f02017a
    .end array-data

    .line 184
    :array_2
    .array-data 4
        0x7f0c00d5
        0x7f0c00d7
        0x7f0c00d6
        0x7f0c00d8
        0x7f0c00cd
        0x7f0c00d3
        0x7f0c00ce
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method
