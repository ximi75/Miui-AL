.class public Lcom/kingsoft/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# static fields
.field public static final ACCOUNT_MAILBOX_PREFIX:Ljava/lang/String; = "__eas"

.field public static final BODY_PREFERENCE_HTML:Ljava/lang/String; = "2"

.field public static final BODY_PREFERENCE_TEXT:Ljava/lang/String; = "1"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "EAS-1.3"

.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static DEBUG:Z = false

.field public static final DEFAULT_PROTOCOL_VERSION:Ljava/lang/String; = "2.5"

.field public static final EAS12_TRUNCATION_SIZE:Ljava/lang/String; = "1000000"

.field public static final EAS2_5_TRUNCATION_SIZE:Ljava/lang/String; = "7"

.field public static final EXCHANGE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final EXCHANGE_ERROR_NOTIFICATION:I = 0x10

.field public static final EXCHANGE_SERVICE_INTENT_ACTION:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field public static FILE_LOG:Z = false

.field public static final FILTER_1_DAY:Ljava/lang/String; = "1"

.field public static final FILTER_1_MONTH:Ljava/lang/String; = "5"

.field public static final FILTER_1_WEEK:Ljava/lang/String; = "3"

.field public static final FILTER_2_WEEKS:Ljava/lang/String; = "4"

.field public static final FILTER_3_DAYS:Ljava/lang/String; = "2"

.field public static final FILTER_3_MONTHS:Ljava/lang/String; = "6"

.field public static final FILTER_6_MONTHS:Ljava/lang/String; = "7"

.field public static final FILTER_ALL:Ljava/lang/String; = "0"

.field public static final FOLDER_STATUS_INVALID_KEY:I = 0x9

.field public static final FOLDER_STATUS_OK:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "Exchange"

.field public static final MAILBOX_TYPE_CALENDAR:I = 0x8

.field public static final MAILBOX_TYPE_CONTACTS:I = 0x9

.field public static final MAILBOX_TYPE_DELETED:I = 0x4

.field public static final MAILBOX_TYPE_DRAFTS:I = 0x3

.field public static final MAILBOX_TYPE_INBOX:I = 0x2

.field public static final MAILBOX_TYPE_OUTBOX:I = 0x6

.field public static final MAILBOX_TYPE_SENT:I = 0x5

.field public static final MAILBOX_TYPE_USER_CALENDAR:I = 0xd

.field public static final MAILBOX_TYPE_USER_CONTACTS:I = 0xe

.field public static final MAILBOX_TYPE_USER_GENERIC:I = 0x1

.field public static final MAILBOX_TYPE_USER_MAIL:I = 0xc

.field public static final MIME_BODY_PREFERENCE_MIME:Ljava/lang/String; = "2"

.field public static final MIME_BODY_PREFERENCE_TEXT:Ljava/lang/String; = "0"

.field public static PARSER_LOG:Z = false

.field public static final PROTOCOL:Ljava/lang/String; = "eas"

.field public static final SUPPORTED_PROTOCOL_EX2003:Ljava/lang/String; = "2.5"

.field public static final SUPPORTED_PROTOCOL_EX2003_DOUBLE:D = 2.5

.field public static final SUPPORTED_PROTOCOL_EX2007:Ljava/lang/String; = "12.0"

.field public static final SUPPORTED_PROTOCOL_EX2007_DOUBLE:D = 12.0

.field public static final SUPPORTED_PROTOCOL_EX2007_SP1:Ljava/lang/String; = "12.1"

.field public static final SUPPORTED_PROTOCOL_EX2007_SP1_DOUBLE:D = 12.1

.field public static final SUPPORTED_PROTOCOL_EX2010:Ljava/lang/String; = "14.0"

.field public static final SUPPORTED_PROTOCOL_EX2010_DOUBLE:D = 14.0

.field public static final SUPPORTED_PROTOCOL_EX2010_SP1:Ljava/lang/String; = "14.1"

.field public static final SUPPORTED_PROTOCOL_EX2010_SP1_DOUBLE:D = 14.1

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->WAIT_DEBUG:Z

    .line 39
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->DEBUG:Z

    .line 42
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    .line 43
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    .line 44
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    .line 180
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 181
    sget-object v0, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 173
    const-string/jumbo v0, "Email"

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string/jumbo v0, "Calendar"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string/jumbo v0, "Contacts"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string/jumbo v0, "2.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-wide/high16 v0, 0x4004000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string/jumbo v0, "12.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-wide/high16 v0, 0x4028000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    const-string/jumbo v0, "12.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-wide v0, 0x4028333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    const-string/jumbo v0, "14.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const-wide/high16 v0, 0x402c000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_3
    const-string/jumbo v0, "14.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const-wide v0, 0x402c333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal protocol version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserDebug(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_2

    .line 134
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    .line 135
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    .line 136
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    .line 137
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    sput-boolean v1, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    .line 140
    :cond_1
    const-string/jumbo v1, "Eas Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Logging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "User "

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "Parser "

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "File"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 134
    goto :goto_0

    :cond_4
    move v0, v2

    .line 135
    goto :goto_1

    :cond_5
    move v0, v2

    .line 136
    goto :goto_2

    .line 140
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_8
    const-string/jumbo v0, ""

    goto :goto_5
.end method
