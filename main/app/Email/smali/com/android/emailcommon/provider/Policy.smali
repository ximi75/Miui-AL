.class public final Lcom/android/emailcommon/provider/Policy;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;


# static fields
.field private static final ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

.field private static final ATTACHMENT_RESET_PROJECTION_FLAGS:I = 0x2

.field private static final ATTACHMENT_RESET_PROJECTION_ID:I = 0x0

.field private static final ATTACHMENT_RESET_PROJECTION_SIZE:I = 0x1

.field public static final CONTENT_DONT_ALLOW_ATTACHMENTS_COLUMN:I = 0xd

.field public static final CONTENT_DONT_ALLOW_CAMERA_COLUMN:I = 0xc

.field public static final CONTENT_DONT_ALLOW_HTML_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAX_ATTACHMENT_SIZE_COLUMN:I = 0xf

.field public static final CONTENT_MAX_CALENDAR_LOOKBACK_COLUMN:I = 0x13

.field public static final CONTENT_MAX_EMAIL_LOOKBACK_COLUMN:I = 0x12

.field public static final CONTENT_MAX_HTML_TRUNCATION_SIZE_COLUMN:I = 0x11

.field public static final CONTENT_MAX_SCREEN_LOCK_TIME_COLUMN:I = 0x7

.field public static final CONTENT_MAX_TEXT_TRUNCATION_SIZE_COLUMN:I = 0x10

.field public static final CONTENT_PASSWORD_COMPLEX_CHARS_COLUMN:I = 0x5

.field public static final CONTENT_PASSWORD_EXPIRATION_DAYS_COLUMN:I = 0x3

.field public static final CONTENT_PASSWORD_HISTORY_COLUMN:I = 0x4

.field public static final CONTENT_PASSWORD_MAX_FAILS_COLUMN:I = 0x6

.field public static final CONTENT_PASSWORD_MIN_LENGTH_COLUMN:I = 0x2

.field public static final CONTENT_PASSWORD_MODE_COLUMN:I = 0x1

.field public static final CONTENT_PASSWORD_RECOVERY_ENABLED_COLUMN:I = 0x14

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_POLICIES_ENFORCED_COLUMN:I = 0x15

.field public static final CONTENT_PROTOCOL_POLICIES_UNSUPPORTED_COLUMN:I = 0x16

.field public static final CONTENT_REQUIRE_ENCRYPTION_COLUMN:I = 0x9

.field public static final CONTENT_REQUIRE_ENCRYPTION_EXTERNAL_COLUMN:I = 0xa

.field public static final CONTENT_REQUIRE_MANUAL_SYNC_WHEN_ROAMING:I = 0xb

.field public static final CONTENT_REQUIRE_REMOTE_WIPE_COLUMN:I = 0x8

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAYS_TO_MSEC:J = 0x5265c00L

.field public static final DEBUG_POLICY:Z = false

.field private static final EXPIRATION_OFFSET_MSEC:J = 0x1d4c0L

.field public static final NO_POLICY:Lcom/android/emailcommon/provider/Policy;

.field public static final PASSWORD_MODE_NONE:I = 0x0

.field public static final PASSWORD_MODE_SIMPLE:I = 0x1

.field public static final PASSWORD_MODE_STRONG:I = 0x2

.field public static final POLICY_STRING_DELIMITER:C = '\u0001'

.field public static final TABLE_NAME:Ljava/lang/String; = "Policy"

.field public static final TAG:Ljava/lang/String; = "Email/Policy"


# instance fields
.field public mDontAllowAttachments:Z

.field public mDontAllowCamera:Z

.field public mDontAllowHtml:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarLookback:I

.field public mMaxEmailLookback:I

.field public mMaxHtmlTruncationSize:I

.field public mMaxScreenLockTime:I

.field public mMaxTextTruncationSize:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMaxFails:I

.field public mPasswordMinLength:I

.field public mPasswordMode:I

.field public mPasswordRecoveryEnabled:Z

.field public mProtocolPoliciesEnforced:Ljava/lang/String;

.field public mProtocolPoliciesUnsupported:Ljava/lang/String;

.field public mRequireEncryption:Z

.field public mRequireEncryptionExternal:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "passwordMode"

    aput-object v1, v0, v4

    const-string/jumbo v1, "passwordMinLength"

    aput-object v1, v0, v5

    const-string/jumbo v1, "passwordExpirationDays"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "passwordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "passwordComplexChars"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "passwordMaxFails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "maxScreenLockTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "requireRemoteWipe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "requireEncryption"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "requireEncryptionExternal"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "requireManualSyncRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "dontAllowCamera"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "dontAllowAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "dontAllowHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "maxTextTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "maxHTMLTruncationSize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "maxEmailLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "maxCalendarLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "passwordRecoveryEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "protocolPoliciesEnforced"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "protocolPoliciesUnsupported"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    .line 123
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "size"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    .line 448
    new-instance v0, Lcom/android/emailcommon/provider/Policy$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 130
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 494
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 495
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 519
    return-void

    :cond_0
    move v0, v2

    .line 504
    goto :goto_0

    :cond_1
    move v0, v2

    .line 505
    goto :goto_1

    :cond_2
    move v0, v2

    .line 506
    goto :goto_2

    :cond_3
    move v0, v2

    .line 507
    goto :goto_3

    :cond_4
    move v0, v2

    .line 508
    goto :goto_4

    :cond_5
    move v0, v2

    .line 509
    goto :goto_5

    :cond_6
    move v0, v2

    .line 510
    goto :goto_6

    :cond_7
    move v1, v2

    .line 516
    goto :goto_7
.end method

.method public static addPolicyStringToList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "policyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 153
    .local v1, "len":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 154
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 155
    .local v0, "end":I
    if-le v0, v2, :cond_0

    .line 156
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v0, 0x1

    .line 161
    goto :goto_0

    .line 163
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "start":I
    :cond_0
    return-object p1
.end method

.method private static appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    return-void
.end method

.method public static getAccountIdWithPolicyKey(Landroid/content/Context;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 143
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "policyKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initPolicy()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method public static restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 138
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Policy;->ATTACHMENT_RESET_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v9, "cv":Landroid/content/ContentValues;
    if-eqz v8, :cond_7

    .line 191
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    .line 193
    .local v14, "policyMax":I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 195
    .local v10, "flags":I
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 196
    .local v15, "size":I
    and-int/lit16 v3, v10, 0x200

    if-eqz v3, :cond_3

    const/16 v16, 0x1

    .line 197
    .local v16, "wasRestricted":Z
    :goto_1
    if-le v15, v14, :cond_4

    const/4 v13, 0x1

    .line 198
    .local v13, "isRestricted":Z
    :goto_2
    move/from16 v0, v16

    if-eq v13, v0, :cond_0

    .line 199
    if-eqz v13, :cond_5

    .line 200
    or-int/lit16 v10, v10, 0x200

    .line 204
    :goto_3
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 205
    .local v11, "id":J
    const-string/jumbo v3, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local v10    # "flags":I
    .end local v11    # "id":J
    .end local v13    # "isRestricted":Z
    .end local v14    # "policyMax":I
    .end local v15    # "size":I
    .end local v16    # "wasRestricted":Z
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 191
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v3, :cond_2

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const v14, 0x7fffffff

    goto :goto_0

    .line 196
    .restart local v10    # "flags":I
    .restart local v14    # "policyMax":I
    .restart local v15    # "size":I
    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .line 197
    .restart local v16    # "wasRestricted":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 202
    .restart local v13    # "isRestricted":Z
    :cond_5
    and-int/lit16 v10, v10, -0x201

    goto :goto_3

    .line 211
    .end local v10    # "flags":I
    .end local v13    # "isRestricted":Z
    .end local v15    # "size":I
    .end local v16    # "wasRestricted":Z
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v14    # "policyMax":I
    :cond_7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 243
    instance-of v2, p1, Lcom/android/emailcommon/provider/Policy;

    if-nez v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 244
    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    .line 246
    .local v0, "otherPolicy":Lcom/android/emailcommon/provider/Policy;
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-ne v2, v3, :cond_0

    .line 247
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-ne v2, v3, :cond_0

    .line 248
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-ne v2, v3, :cond_0

    .line 249
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v2, v3, :cond_0

    .line 250
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v2, v3, :cond_0

    .line 251
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v2, v3, :cond_0

    .line 252
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v2, v3, :cond_0

    .line 253
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v2, v3, :cond_0

    .line 254
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v2, v3, :cond_0

    .line 255
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v2, v3, :cond_0

    .line 256
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-ne v2, v3, :cond_0

    .line 260
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-ne v2, v3, :cond_0

    .line 263
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v2, v3, :cond_0

    .line 264
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-ne v2, v3, :cond_0

    .line 265
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-ne v2, v3, :cond_0

    .line 266
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    if-ne v2, v3, :cond_0

    .line 267
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    if-ne v2, v3, :cond_0

    .line 268
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-ne v2, v3, :cond_0

    .line 269
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-ne v2, v3, :cond_0

    .line 270
    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-ne v2, v3, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .locals 6

    .prologue
    .line 380
    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 384
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 385
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 387
    :cond_0
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    packed-switch v0, :pswitch_data_0

    .line 372
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    :pswitch_0
    const/high16 v0, 0x20000

    goto :goto_0

    .line 366
    :pswitch_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-nez v0, :cond_0

    .line 367
    const/high16 v0, 0x50000

    goto :goto_0

    .line 369
    :cond_0
    const/high16 v0, 0x60000

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 286
    .local v0, "code":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 287
    iget-boolean v3, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v3, :cond_2

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 288
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 289
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 290
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 291
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    shl-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr v0, v1

    .line 293
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    shl-int/lit8 v1, v1, 0x16

    add-int/2addr v0, v1

    .line 294
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    shl-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 296
    return v0

    .end local v0    # "code":I
    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    .restart local v0    # "code":I
    :cond_1
    move v3, v2

    .line 286
    goto :goto_1

    :cond_2
    move v1, v2

    .line 287
    goto :goto_2
.end method

.method public normalize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v0, :cond_1

    .line 222
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 223
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 224
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 225
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 226
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 227
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v3, :cond_0

    .line 236
    iput v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 301
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mBaseUri:Landroid/net/Uri;

    .line 302
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    .line 303
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 304
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 305
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 306
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 307
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 308
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 309
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 310
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 311
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 312
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 314
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    .line 316
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    .line 317
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    .line 318
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    .line 319
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    .line 320
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 321
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 322
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 323
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    .line 324
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    .line 325
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 326
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 328
    return-void

    :cond_0
    move v0, v2

    .line 310
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 311
    goto :goto_1

    :cond_2
    move v0, v2

    .line 312
    goto :goto_2

    :cond_3
    move v0, v2

    .line 314
    goto :goto_3

    :cond_4
    move v0, v2

    .line 316
    goto :goto_4

    :cond_5
    move v0, v2

    .line 317
    goto :goto_5

    :cond_6
    move v0, v2

    .line 318
    goto :goto_6

    :cond_7
    move v1, v2

    .line 324
    goto :goto_7
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 170
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 332
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "passwordMode"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string/jumbo v1, "passwordMinLength"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string/jumbo v1, "passwordMaxFails"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string/jumbo v1, "passwordHistory"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string/jumbo v1, "passwordExpirationDays"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string/jumbo v1, "passwordComplexChars"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string/jumbo v1, "maxScreenLockTime"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string/jumbo v1, "requireRemoteWipe"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 341
    const-string/jumbo v1, "requireEncryption"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 342
    const-string/jumbo v1, "requireEncryptionExternal"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 343
    const-string/jumbo v1, "requireManualSyncRoaming"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    const-string/jumbo v1, "dontAllowCamera"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 345
    const-string/jumbo v1, "dontAllowAttachments"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 346
    const-string/jumbo v1, "dontAllowHtml"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 347
    const-string/jumbo v1, "maxAttachmentSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string/jumbo v1, "maxTextTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string/jumbo v1, "maxHTMLTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string/jumbo v1, "maxEmailLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string/jumbo v1, "maxCalendarLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string/jumbo v1, "passwordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    const-string/jumbo v1, "protocolPoliciesEnforced"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, "protocolPoliciesUnsupported"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string/jumbo v1, "No policies]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 403
    :cond_0
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v1, :cond_7

    .line 404
    const-string/jumbo v1, "Pwd none "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :goto_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_1

    .line 415
    const-string/jumbo v1, "encrypt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v1, :cond_2

    .line 418
    const-string/jumbo v1, "encryptsd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_2
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v1, :cond_3

    .line 421
    const-string/jumbo v1, "nocamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_3
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_4

    .line 424
    const-string/jumbo v1, "noatts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_4
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_5

    .line 427
    const-string/jumbo v1, "nopushroam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_5
    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v1, :cond_6

    .line 430
    const-string/jumbo v1, "attmax"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 432
    :cond_6
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 406
    :cond_7
    const-string/jumbo v2, "Pwd strong"

    iget v1, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    :goto_2
    invoke-static {v0, v2, v1}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 407
    const-string/jumbo v1, "len"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 408
    const-string/jumbo v1, "cmpx"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 409
    const-string/jumbo v1, "expy"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 410
    const-string/jumbo v1, "hist"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 411
    const-string/jumbo v1, "fail"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 412
    const-string/jumbo v1, "idle"

    iget v2, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->appendPolicy(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 406
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Policy;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 467
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    if-eqz v0, :cond_7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    return-void

    :cond_0
    move v0, v2

    .line 474
    goto :goto_0

    :cond_1
    move v0, v2

    .line 475
    goto :goto_1

    :cond_2
    move v0, v2

    .line 476
    goto :goto_2

    :cond_3
    move v0, v2

    .line 477
    goto :goto_3

    :cond_4
    move v0, v2

    .line 478
    goto :goto_4

    :cond_5
    move v0, v2

    .line 479
    goto :goto_5

    :cond_6
    move v0, v2

    .line 480
    goto :goto_6

    :cond_7
    move v1, v2

    .line 486
    goto :goto_7
.end method
