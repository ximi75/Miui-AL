.class public Lcom/kingsoft/mail/providers/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FACTORY:Lcom/kingsoft/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/CursorCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_MOSTLY_DEAD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MOVE_CONVERSATIONS_URI:Landroid/net/Uri;

.field public static final NO_POSITION:I = -0x1

.field public static final UPDATE_FOLDER_COLUMN:Ljava/lang/String; = "rawFolders"

.field private static final sConversationInfoRequest:Landroid/os/Bundle;

.field private static final sRawFoldersRequest:Landroid/os/Bundle;

.field private static sSubjectAndSnippet:Ljava/lang/String;


# instance fields
.field public accountUri:Landroid/net/Uri;

.field public attachmentPreviewStates:I

.field public attachmentPreviewUri0:Ljava/lang/String;

.field public attachmentPreviewUri1:Ljava/lang/String;

.field public transient attachmentPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public attachmentPreviewsCount:I

.field public color:I

.field public convFlags:I

.field public conversationBaseUri:Landroid/net/Uri;

.field public conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

.field public dateMs:J

.field public flagLoaded:I

.field public hasAttachments:Z

.field public id:J

.field public isFromMeOnChat:Z

.field public isRemote:Z

.field public transient localDeleteOnUpdate:Z

.field public mailboxKey:J

.field public mergeCount:I

.field public messageListUri:Landroid/net/Uri;

.field public messageSize:I

.field public muted:Z

.field private numDrafts:I

.field private numMessages:I

.field public personalLevel:I

.field public phishing:Z

.field public transient position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public priority:I

.field private rawFolders:Lcom/kingsoft/mail/providers/FolderList;

.field public read:Z

.field public seen:Z

.field public senders:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sendingState:I

.field public serverId:Ljava/lang/String;

.field public snippet:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public spam:Z

.field public starred:Z

.field public subject:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field private transient viewed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->EMPTY:Ljava/util/Collection;

    .line 331
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Conversation$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 351
    const-string/jumbo v0, "content://moveconversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->MOVE_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 533
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    .line 534
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    .line 819
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation$2;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Conversation$2;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    if-eqz p1, :cond_2

    .line 360
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 361
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 362
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    .line 363
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 365
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 366
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 368
    :cond_0
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    .line 369
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "messageList":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 371
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    .line 372
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    .line 373
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 374
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    .line 375
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 376
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Conversation;->readRawFolders(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    .line 377
    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 378
    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    .line 379
    const/16 v3, 0x12

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    .line 380
    const/16 v3, 0x13

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    .line 381
    const/16 v3, 0x14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    .line 382
    const/16 v3, 0x15

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->color:I

    .line 383
    const/16 v3, 0x16

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_8
    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 385
    iput v9, p0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 386
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 387
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Conversation;->readConversationInfo(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 388
    const/16 v3, 0x19

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "conversationBase":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_9
    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 392
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 393
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-nez v3, :cond_1

    .line 394
    const/16 v3, 0x17

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 395
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    .line 396
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    .line 398
    :cond_1
    const/16 v3, 0x18

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    .line 399
    const/16 v3, 0x1c

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    :goto_a
    iput-boolean v4, p0, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    .line 400
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 401
    const/16 v3, 0x1d

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 403
    const/16 v3, 0x1e

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 405
    const/16 v3, 0x1f

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 407
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    .line 413
    const/16 v3, 0x1a

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    .line 414
    const-string/jumbo v3, "messageSize"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_e

    .line 416
    const-string/jumbo v3, "messageSize"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    .line 422
    :goto_b
    const/16 v3, 0x1b

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    .line 423
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    .line 426
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "conversationBase":Ljava/lang/String;
    .end local v2    # "messageList":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 368
    goto/16 :goto_0

    .restart local v2    # "messageList":Ljava/lang/String;
    :cond_4
    move-object v3, v6

    .line 370
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 373
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 374
    goto/16 :goto_3

    :cond_7
    move v3, v5

    .line 375
    goto/16 :goto_4

    :cond_8
    move v3, v5

    .line 379
    goto/16 :goto_5

    :cond_9
    move v3, v5

    .line 380
    goto/16 :goto_6

    :cond_a
    move v3, v5

    .line 381
    goto/16 :goto_7

    .restart local v0    # "account":Ljava/lang/String;
    :cond_b
    move-object v3, v6

    .line 384
    goto/16 :goto_8

    .restart local v1    # "conversationBase":Ljava/lang/String;
    :cond_c
    move-object v3, v6

    .line 390
    goto/16 :goto_9

    :cond_d
    move v4, v5

    .line 399
    goto :goto_a

    .line 420
    :cond_e
    iput v5, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    goto :goto_b
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    move-object v0, p2

    .line 273
    .local v0, "newLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 274
    const-class v1, Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 276
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    .line 281
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Conversation;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/FolderList;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->color:I

    .line 297
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 298
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 299
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/ConversationInfo;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 301
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    .line 303
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    :goto_8
    iput-boolean v2, p0, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    .line 316
    return-void

    :cond_1
    move v1, v3

    .line 280
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 287
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 288
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 289
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 293
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 294
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 295
    goto/16 :goto_6

    :cond_8
    move v1, v3

    .line 302
    goto :goto_7

    :cond_9
    move v2, v3

    .line 314
    goto :goto_8
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/providers/Conversation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/kingsoft/mail/providers/Conversation$1;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 2
    .param p1, "other"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    if-nez p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-wide v0, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 434
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 435
    iget-wide v0, p1, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    .line 436
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 437
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    .line 438
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 439
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    .line 440
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    .line 441
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 442
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    .line 443
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 444
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    .line 445
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 446
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    .line 447
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    .line 448
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    .line 449
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    .line 450
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->color:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->color:I

    .line 451
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 452
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 453
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 456
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 457
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 458
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 459
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 460
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    .line 461
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    .line 462
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 464
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 465
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 466
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 467
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 468
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    .line 469
    iget-wide v0, p1, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    .line 471
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    .line 472
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    iput v0, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    .line 473
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    .line 474
    iget-boolean v0, p1, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    goto/16 :goto_0
.end method

.method public static final contains(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Conversation;)Z
    .locals 8
    .param p1, "needle"    # Lcom/kingsoft/mail/providers/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 691
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    move v4, v5

    .line 704
    :cond_1
    :goto_0
    return v4

    .line 695
    :cond_2
    if-eqz p1, :cond_1

    .line 698
    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 699
    .local v2, "toFind":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 700
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v6, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    goto :goto_0

    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    :cond_4
    move v4, v5

    .line 704
    goto :goto_0
.end method

.method public static create(JLandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;IIIIZZZLcom/kingsoft/mail/providers/FolderList;IIZZZLandroid/net/Uri;Lcom/kingsoft/mail/providers/ConversationInfo;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;IIIJ)Lcom/kingsoft/mail/providers/Conversation;
    .locals 4
    .param p0, "id"    # J
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "dateMs"    # J
    .param p6, "snippet"    # Ljava/lang/String;
    .param p7, "hasAttachment"    # Z
    .param p8, "messageListUri"    # Landroid/net/Uri;
    .param p9, "senders"    # Ljava/lang/String;
    .param p10, "numMessages"    # I
    .param p11, "numDrafts"    # I
    .param p12, "sendingState"    # I
    .param p13, "priority"    # I
    .param p14, "read"    # Z
    .param p15, "seen"    # Z
    .param p16, "starred"    # Z
    .param p17, "rawFolders"    # Lcom/kingsoft/mail/providers/FolderList;
    .param p18, "convFlags"    # I
    .param p19, "personalLevel"    # I
    .param p20, "spam"    # Z
    .param p21, "phishing"    # Z
    .param p22, "muted"    # Z
    .param p23, "accountUri"    # Landroid/net/Uri;
    .param p24, "conversationInfo"    # Lcom/kingsoft/mail/providers/ConversationInfo;
    .param p25, "conversationBase"    # Landroid/net/Uri;
    .param p26, "isRemote"    # Z
    .param p27, "attachmentPreviewUri0"    # Ljava/lang/String;
    .param p28, "attachmentPreviewUri1"    # Ljava/lang/String;
    .param p29, "attachmentPreviewStates"    # I
    .param p30, "attachmentPreviewsCount"    # I
    .param p31, "mergeCount"    # I
    .param p32, "mailboxKey"    # J

    .prologue
    .line 489
    new-instance v2, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v2}, Lcom/kingsoft/mail/providers/Conversation;-><init>()V

    .line 491
    .local v2, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iput-wide p0, v2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 492
    iput-object p2, v2, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 493
    iput-object p3, v2, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    .line 494
    iput-wide p4, v2, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    .line 495
    iput-object p6, v2, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    .line 496
    iput-boolean p7, v2, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    .line 497
    iput-object p8, v2, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    .line 498
    invoke-static {p9}, Lcom/kingsoft/mail/providers/Conversation;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    .line 499
    iput p10, v2, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    .line 500
    iput p11, v2, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    .line 501
    move/from16 v0, p12

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    .line 502
    move/from16 v0, p13

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    .line 503
    move/from16 v0, p14

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 504
    move/from16 v0, p15

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    .line 505
    move/from16 v0, p16

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 506
    move-object/from16 v0, p17

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    .line 507
    move/from16 v0, p18

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 508
    move/from16 v0, p19

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    .line 509
    move/from16 v0, p20

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    .line 510
    move/from16 v0, p21

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    .line 511
    move/from16 v0, p22

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    .line 512
    const/4 v3, 0x0

    iput v3, v2, Lcom/kingsoft/mail/providers/Conversation;->color:I

    .line 513
    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 514
    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 515
    move-object/from16 v0, p25

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    .line 516
    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    .line 517
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 518
    move-object/from16 v0, p27

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p28

    iput-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    .line 520
    move/from16 v0, p29

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 521
    move/from16 v0, p30

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    .line 522
    move/from16 v0, p31

    iput v0, v2, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    .line 523
    move-wide/from16 v0, p32

    iput-wide v0, v2, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    .line 525
    const/4 v3, 0x0

    iput v3, v2, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    .line 526
    const/4 v3, 0x0

    iput v3, v2, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    .line 527
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    .line 528
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    .line 530
    return-object v2
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 788
    if-eqz p0, :cond_0

    .end local p0    # "in":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "in":Ljava/lang/String;
    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filteredSubject"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;

    .prologue
    .line 801
    sget-object v0, Lcom/kingsoft/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 802
    const v0, 0x7f100398

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    .line 804
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    const-string/jumbo p2, ""

    .line 812
    .end local p2    # "snippet":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 806
    .restart local p2    # "snippet":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p2, p1

    .line 809
    goto :goto_0

    .line 812
    :cond_3
    sget-object v0, Lcom/kingsoft/mail/providers/Conversation;->sSubjectAndSnippet:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;
    .locals 1
    .param p0, "in"    # Lcom/kingsoft/mail/providers/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    if-nez p0, :cond_0

    sget-object v0, Lcom/kingsoft/mail/providers/Conversation;->EMPTY:Ljava/util/Collection;

    .line 716
    .local v0, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    :goto_0
    return-object v0

    .line 715
    .end local v0    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private static readConversationInfo(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/ConversationInfo;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 539
    instance-of v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 540
    check-cast v4, Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedBlob(I)[B

    move-result-object v0

    .line 542
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 543
    invoke-static {v0}, Lcom/kingsoft/mail/providers/ConversationInfo;->fromBlob([B)Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v1

    .line 561
    .end local v0    # "blob":[B
    :goto_0
    return-object v1

    .line 547
    :cond_0
    const-string/jumbo v2, "conversationInfo"

    .line 548
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    const-string/jumbo v5, "conversationInfo"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    const-string/jumbo v5, "options"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    :cond_1
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sConversationInfoRequest:Landroid/os/Bundle;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 555
    .local v3, "response":Landroid/os/Bundle;
    const-string/jumbo v4, "conversationInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 556
    const-string/jumbo v4, "conversationInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/ConversationInfo;

    .local v1, "ci":Lcom/kingsoft/mail/providers/ConversationInfo;
    goto :goto_0

    .line 559
    .end local v1    # "ci":Lcom/kingsoft/mail/providers/ConversationInfo;
    :cond_2
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/providers/ConversationInfo;->fromBlob([B)Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v1

    .restart local v1    # "ci":Lcom/kingsoft/mail/providers/ConversationInfo;
    goto :goto_0
.end method

.method private static readRawFolders(Landroid/database/Cursor;)Lcom/kingsoft/mail/providers/FolderList;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 567
    instance-of v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 568
    check-cast v4, Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedBlob(I)[B

    move-result-object v0

    .line 570
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 571
    invoke-static {v0}, Lcom/kingsoft/mail/providers/FolderList;->fromBlob([B)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v1

    .line 591
    .end local v0    # "blob":[B
    :goto_0
    return-object v1

    .line 575
    :cond_0
    const-string/jumbo v2, "rawFolders"

    .line 576
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    const-string/jumbo v5, "rawFolders"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    const-string/jumbo v5, "options"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    :cond_1
    sget-object v4, Lcom/kingsoft/mail/providers/Conversation;->sRawFoldersRequest:Landroid/os/Bundle;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 583
    .local v3, "response":Landroid/os/Bundle;
    const-string/jumbo v4, "rawFolders"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    const-string/jumbo v4, "rawFolders"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/FolderList;

    .local v1, "fl":Lcom/kingsoft/mail/providers/FolderList;
    goto :goto_0

    .line 588
    .end local v1    # "fl":Lcom/kingsoft/mail/providers/FolderList;
    :cond_2
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/providers/FolderList;->fromBlob([B)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v1

    .restart local v1    # "fl":Lcom/kingsoft/mail/providers/FolderList;
    goto :goto_0
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " conversations:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 775
    .local v1, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 776
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    add-int/lit8 v1, v1, 0x1

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 781
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public applyCachedValues(Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 600
    if-nez p1, :cond_1

    .line 636
    :cond_0
    return-void

    .line 603
    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 604
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 605
    .local v2, "val":Ljava/lang/Object;
    sget-object v3, Lcom/kingsoft/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Conversation: applying cached value to col=%s val=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v2, v7, v4

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 607
    const-string/jumbo v3, "read"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 608
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    .line 609
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v3, "conversationInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    check-cast v2, [B

    .end local v2    # "val":Ljava/lang/Object;
    check-cast v2, [B

    invoke-static {v2}, Lcom/kingsoft/mail/providers/ConversationInfo;->fromBlob([B)Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    goto :goto_0

    .line 611
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v3, "conversationFlags"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 612
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    goto :goto_0

    .line 613
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v3, "starred"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 614
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_2

    .line 615
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v3, "seen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 616
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto :goto_3

    .line 617
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v3, "rawFolders"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 618
    check-cast v2, [B

    .end local v2    # "val":Ljava/lang/Object;
    check-cast v2, [B

    invoke-static {v2}, Lcom/kingsoft/mail/providers/FolderList;->fromBlob([B)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    goto/16 :goto_0

    .line 619
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v3, "viewed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 623
    const-string/jumbo v3, "flagLoaded"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 624
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    goto/16 :goto_0

    .line 625
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_c
    const-string/jumbo v3, "messageSize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 626
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    goto/16 :goto_0

    .line 627
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_d
    const-string/jumbo v3, "syncServerId"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 628
    check-cast v2, Ljava/lang/String;

    .end local v2    # "val":Ljava/lang/Object;
    iput-object v2, p0, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    goto/16 :goto_0

    .line 632
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_e
    sget-object v3, Lcom/kingsoft/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const-string/jumbo v7, "unsupported cached conv value in col=%s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v5

    invoke-static {v3, v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 654
    instance-of v1, p1, Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 655
    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 656
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v1, v0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 658
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttachmentPreviewUris()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 756
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    .line 757
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getNumMessages()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->messageCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    goto :goto_0
.end method

.method public getRawFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isImportant()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 670
    iget v1, p0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMostlyDead()Z
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewed()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->viewed:Z

    return v0
.end method

.method public markViewed()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->viewed:Z

    .line 748
    return-void
.end method

.method public numDrafts()I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget v0, v0, Lcom/kingsoft/mail/providers/ConversationInfo;->draftCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    goto :goto_0
.end method

.method public setRawFolders(Lcom/kingsoft/mail/providers/FolderList;)V
    .locals 0
    .param p1, "folders"    # Lcom/kingsoft/mail/providers/FolderList;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    .line 650
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[conversation id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    sget-object v1, Lcom/kingsoft/mail/providers/Conversation;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string/jumbo v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 238
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->numDrafts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->rawFolders:Lcom/kingsoft/mail/providers/FolderList;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 247
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 256
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewUri1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    if-eqz v0, :cond_8

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return-void

    :cond_0
    move v0, v2

    .line 236
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 243
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 244
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 245
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 249
    goto :goto_4

    :cond_5
    move v0, v2

    .line 250
    goto :goto_5

    :cond_6
    move v0, v2

    .line 251
    goto :goto_6

    :cond_7
    move v0, v2

    .line 256
    goto :goto_7

    :cond_8
    move v1, v2

    .line 267
    goto :goto_8
.end method
