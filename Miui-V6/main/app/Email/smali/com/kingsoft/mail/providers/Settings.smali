.class public Lcom/kingsoft/mail/providers/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCCEPABLE_MAX_ATTACHMENT_SIZE:I = 0x500000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:I = 0x0

.field private static final DEFAULT_MAX_ATTACHMENT_SIZE:I = 0xf00000

.field static final EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SWIPE_SETTING_ARCHIVE:I = 0x0

.field public static final SWIPE_SETTING_DELETE:I = 0x1

.field public static final SWIPE_SETTING_DISABLED:I = 0x2

.field private static final sDefault:Lcom/kingsoft/mail/providers/Settings;


# instance fields
.field public final confirmArchive:Z

.field public final confirmDelete:Z

.field public final confirmSend:Z

.field public final convListAttachmentPreviews:Z

.field public final convListIcon:I

.field public final conversationViewMode:I

.field public final defaultInbox:Landroid/net/Uri;

.field public final defaultInboxName:Ljava/lang/String;

.field public final forceReplyFromDefault:Z

.field private final mAutoAdvance:I

.field private mHashCode:I

.field private mTransientAutoAdvance:Ljava/lang/Integer;

.field public final maxAttachmentSize:I

.field public final messageTextSize:I

.field public final moveToInbox:Landroid/net/Uri;

.field public final priorityArrowsEnabled:Z

.field public final replyBehavior:I

.field public final setupIntentUri:Landroid/net/Uri;

.field public final signature:Ljava/lang/String;

.field public final snapHeaders:I

.field public final swipe:I

.field public final veiledAddressPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/kingsoft/mail/providers/Settings;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Settings;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

    .line 111
    sget-object v0, Lcom/kingsoft/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

    sput-object v0, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    .line 407
    new-instance v0, Lcom/kingsoft/mail/providers/Settings$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Settings$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    .line 116
    iput v1, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    .line 117
    iput v1, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    .line 118
    iput v1, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    .line 119
    iput v2, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    .line 120
    iput-boolean v2, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 121
    iput-boolean v2, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    .line 122
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    .line 123
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    .line 124
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 126
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 127
    iput v1, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    .line 128
    iput v1, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    .line 129
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 130
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    .line 132
    iput-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 133
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 160
    const-string/jumbo v0, "signature"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "auto_advance"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    .line 162
    const-string/jumbo v0, "message_text_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    .line 163
    const-string/jumbo v0, "snap_headers"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    .line 164
    const-string/jumbo v0, "reply_behavior"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    .line 165
    const-string/jumbo v0, "conversation_list_icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    .line 166
    const-string/jumbo v0, "conversation_list_attachment_previews"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 168
    const-string/jumbo v0, "confirm_delete"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    .line 169
    const-string/jumbo v0, "confirm_archive"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    .line 170
    const-string/jumbo v0, "confirm_send"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    .line 171
    const-string/jumbo v0, "default_inbox"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 173
    const-string/jumbo v0, "default_inbox_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "force_reply_from_default"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 177
    const-string/jumbo v0, "max_attachment_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    .line 179
    const-string/jumbo v0, "swipe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    .line 180
    const-string/jumbo v0, "priority_inbox_arrows_enabled"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 182
    const-string/jumbo v0, "setup_intent_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 184
    const-string/jumbo v0, "conversation_view_mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    .line 186
    const-string/jumbo v0, "veiled_address_pattern"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "move_to_inbox"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 190
    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, "signature"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 166
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 168
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 169
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 170
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 175
    goto/16 :goto_5

    :cond_6
    move v1, v2

    .line 180
    goto :goto_6
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "inParcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 157
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v0, v2

    .line 144
    goto :goto_1

    :cond_2
    move v0, v2

    .line 145
    goto :goto_2

    :cond_3
    move v0, v2

    .line 146
    goto :goto_3

    :cond_4
    move v0, v2

    .line 149
    goto :goto_4

    :cond_5
    move v1, v2

    .line 152
    goto :goto_5
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 193
    const-string/jumbo v0, "signature"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "auto_advance"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    .line 195
    const-string/jumbo v0, "message_text_size"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    .line 196
    const-string/jumbo v0, "snap_headers"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    .line 197
    const-string/jumbo v0, "reply_behavior"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    .line 198
    const-string/jumbo v0, "conversation_list_icon"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    .line 199
    const-string/jumbo v0, "conversation_list_attachment_previews"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    .line 201
    const-string/jumbo v0, "confirm_delete"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    .line 202
    const-string/jumbo v0, "confirm_archive"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    .line 203
    const-string/jumbo v0, "confirm_send"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    .line 204
    const-string/jumbo v0, "default_inbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 205
    const-string/jumbo v0, "default_inbox_name"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "force_reply_from_default"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    .line 209
    const-string/jumbo v0, "max_attachment_size"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    .line 211
    const-string/jumbo v0, "swipe"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    .line 212
    const-string/jumbo v0, "priority_inbox_arrows_enabled"

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    .line 214
    const-string/jumbo v0, "setup_intent_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    .line 215
    const-string/jumbo v0, "conversation_view_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    .line 217
    const-string/jumbo v0, "veiled_address_pattern"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "move_to_inbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    .line 219
    return-void
.end method

.method public static getDefaultInboxUri(Lcom/kingsoft/mail/providers/Settings;)Landroid/net/Uri;
    .locals 2
    .param p0, "settings"    # Lcom/kingsoft/mail/providers/Settings;

    .prologue
    .line 361
    if-nez p0, :cond_0

    .line 362
    sget-object v0, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "candidate"    # Ljava/lang/Object;
    .param p1, "fallback"    # Ljava/lang/Object;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 232
    .end local p1    # "fallback":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "fallback":Ljava/lang/Object;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static getSwipeSetting(Lcom/kingsoft/mail/providers/Settings;)I
    .locals 1
    .param p0, "settings"    # Lcom/kingsoft/mail/providers/Settings;

    .prologue
    .line 403
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget v0, v0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    goto :goto_0
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/kingsoft/mail/providers/Settings;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingsoft/mail/providers/Settings;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/providers/Settings;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "aThat"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    sget-object v4, Lcom/kingsoft/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Settings.equals(%s)"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    if-ne p0, p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v2

    .line 432
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 433
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 435
    check-cast v1, Lcom/kingsoft/mail/providers/Settings;

    .line 436
    .local v1, "that":Lcom/kingsoft/mail/providers/Settings;
    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 439
    .local v0, "autoAdvanceEquals":Z
    :goto_1
    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    iget-boolean v5, v1, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    iget v5, v1, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    iget-object v5, v1, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto/16 :goto_0

    .line 436
    .end local v0    # "autoAdvanceEquals":Z
    :cond_5
    iget-object v4, v1, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    if-nez v4, :cond_6

    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto/16 :goto_1
.end method

.method public getAutoAdvanceSetting()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    goto :goto_0
.end method

.method public getMaxAttachmentSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    if-gtz v0, :cond_0

    const/high16 v0, 0xf00000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    goto :goto_0
.end method

.method public getValueMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 280
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v0, "signature"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v0, "auto_advance"

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v0, "message_text_size"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v0, "snap_headers"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v0, "reply_behavior"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v0, "conversation_list_icon"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v3, "conversation_list_attachment_previews"

    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v3, "confirm_delete"

    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v3, "confirm_archive"

    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v3, "confirm_send"

    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v0, "default_inbox"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v0, "default_inbox_name"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v3, "force_reply_from_default"

    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "max_attachment_size"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v0, "swipe"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v0, "priority_inbox_arrows_enabled"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    if-eqz v3, :cond_6

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v0, "setup_intent_uri"

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v0, "conversation_view_mode"

    iget v1, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v0, "veiled_address_pattern"

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "move_to_inbox"

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-object p1

    :cond_1
    move v0, v2

    .line 286
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 288
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 289
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 290
    goto :goto_3

    :cond_5
    move v0, v2

    .line 293
    goto :goto_4

    :cond_6
    move v1, v2

    .line 297
    goto :goto_5
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 464
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->mHashCode:I

    if-nez v0, :cond_0

    .line 465
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->mAutoAdvance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/mail/providers/Settings;->mHashCode:I

    .line 473
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->mHashCode:I

    return v0
.end method

.method public isOverviewMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 392
    iget v2, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    .line 394
    .local v0, "val":I
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .end local v0    # "val":I
    :cond_1
    move v0, v1

    .line 392
    goto :goto_0
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Settings;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 225
    .end local v0    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAutoAdvanceSetting(I)V
    .locals 1
    .param p1, "autoAdvance"    # I

    .prologue
    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->mTransientAutoAdvance:Ljava/lang/Integer;

    .line 384
    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v2, "signature"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v2, "auto_advance"

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v2, "message_text_size"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v2, "snap_headers"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v2, "reply_behavior"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v2, "conversation_list_icon"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v2, "conversation_list_attachment_previews"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v2, "confirm_delete"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 249
    const-string/jumbo v2, "confirm_archive"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v2, "confirm_send"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    const-string/jumbo v2, "default_inbox"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v2, "default_inbox_name"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v2, "force_reply_from_default"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v2, "max_attachment_size"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v2, "swipe"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v2, "priority_inbox_arrows_enabled"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v2, "setup_intent_uri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v2, "conversation_view_mode"

    iget v3, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v2, "veiled_address_pattern"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v2, "move_to_inbox"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    monitor-exit p0

    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v2, Lcom/kingsoft/mail/providers/Settings;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not serialize settings"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 239
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    sget-object v3, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->messageTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->confirmSend:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    sget-object v3, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Settings;->defaultInboxName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->maxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->swipe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/kingsoft/mail/providers/Settings;->conversationViewMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->sDefault:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/providers/Settings;->getNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    return-void

    :cond_0
    move v0, v2

    .line 337
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_1

    :cond_2
    move v0, v2

    .line 339
    goto :goto_2

    :cond_3
    move v0, v2

    .line 340
    goto :goto_3

    :cond_4
    move v0, v2

    .line 343
    goto :goto_4

    :cond_5
    move v1, v2

    .line 346
    goto :goto_5
.end method
