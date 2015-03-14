.class public Lcom/kingsoft/mail/providers/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/providers/Folder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_FOLDER:I = 0x3

.field public static final EMPTY_FOLDER2:I = 0x0

.field public static final FACTORY:Lcom/kingsoft/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/CursorCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOLDER_UNINITIALIZED:Ljava/lang/String; = "Uninitialized!"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NULL_STRING_URI:Ljava/lang/String; = "null"

.field public static final SPLITTER:Ljava/lang/String; = "^*^"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SPLITTER_REGEX:Ljava/util/regex/Pattern;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bgColor:Ljava/lang/String;

.field public bgColorInt:I

.field public capabilities:I

.field public childFoldersListUri:Landroid/net/Uri;

.field public conversationListUri:Landroid/net/Uri;

.field public fgColor:Ljava/lang/String;

.field public fgColorInt:I

.field public flags:I

.field public folderUri:Lcom/kingsoft/mail/utils/FolderUri;

.field public hasChildren:Z

.field public hierarchicalDesc:Ljava/lang/String;

.field public iconResId:I

.field public id:I

.field public lastMessageTimestamp:J

.field public lastSyncResult:I

.field public lastSyncTimestamp:J

.field public level:I

.field public loadMoreUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public notificationIconResId:I

.field public parent:Landroid/net/Uri;

.field public persistentId:Ljava/lang/String;

.field public refreshUri:Landroid/net/Uri;

.field public subFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field public syncStatus:I

.field public syncWindow:I

.field public totalCount:I

.field public type:I

.field public unreadCount:I

.field public unreadSenders:Ljava/lang/String;

.field public unseenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "\\^\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Folder;->SPLITTER_REGEX:Ljava/util/regex/Pattern;

    .line 69
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Folder;->LOG_TAG:Ljava/lang/String;

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Folder;->EMPTY:Ljava/util/Collection;

    .line 451
    new-instance v0, Lcom/kingsoft/mail/providers/Folder$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Folder$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    .line 573
    new-instance v0, Lcom/kingsoft/mail/providers/Folder$2;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Folder$2;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Folder;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 560
    const-string/jumbo v0, "Uninitialized!"

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IZILandroid/net/Uri;Landroid/net/Uri;IIILandroid/net/Uri;IIIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "persistentId"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "capabilities"    # I
    .param p6, "hasChildren"    # Z
    .param p7, "syncWindow"    # I
    .param p8, "conversationListUri"    # Landroid/net/Uri;
    .param p9, "childFoldersListUri"    # Landroid/net/Uri;
    .param p10, "unseenCount"    # I
    .param p11, "unreadCount"    # I
    .param p12, "totalCount"    # I
    .param p13, "refreshUri"    # Landroid/net/Uri;
    .param p14, "syncStatus"    # I
    .param p15, "lastSyncResult"    # I
    .param p16, "type"    # I
    .param p17, "iconResId"    # I
    .param p18, "notificationIconResId"    # I
    .param p19, "bgColor"    # Ljava/lang/String;
    .param p20, "fgColor"    # Ljava/lang/String;
    .param p21, "loadMoreUri"    # Landroid/net/Uri;
    .param p22, "hierarchicalDesc"    # Ljava/lang/String;
    .param p23, "parent"    # Landroid/net/Uri;
    .param p24, "lastMessageTimestamp"    # J
    .param p26, "unreadSenders"    # Ljava/lang/String;
    .param p27, "lastSyncTimestamp"    # J

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 363
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder;->id:I

    .line 364
    iput-object p2, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    .line 365
    new-instance v2, Lcom/kingsoft/mail/utils/FolderUri;

    invoke-direct {v2, p3}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 366
    iput-object p4, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 367
    iput p5, p0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    .line 368
    iput-boolean p6, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    .line 369
    iput p7, p0, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    .line 370
    iput-object p8, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    .line 371
    iput-object p9, p0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 372
    iput p10, p0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    .line 373
    iput p11, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 374
    iput p12, p0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    .line 375
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 376
    move/from16 v0, p14

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    .line 377
    move/from16 v0, p15

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    .line 378
    move/from16 v0, p16

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    .line 379
    move/from16 v0, p17

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    .line 380
    move/from16 v0, p18

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    .line 381
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    .line 383
    if-eqz p19, :cond_0

    .line 384
    invoke-static/range {p19 .. p19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Folder;->bgColorInt:I

    .line 386
    :cond_0
    if-eqz p20, :cond_1

    .line 387
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Folder;->fgColorInt:I

    .line 389
    :cond_1
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    .line 390
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->hierarchicalDesc:Ljava/lang/String;

    .line 391
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastMessageTimestamp:J

    .line 392
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    .line 393
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    .line 394
    move-wide/from16 v0, p27

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    .line 73
    iput v7, p0, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 398
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/kingsoft/mail/providers/Folder;->id:I

    .line 399
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    .line 400
    new-instance v9, Lcom/kingsoft/mail/utils/FolderUri;

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 402
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 403
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    .line 404
    const/16 v9, 0x18

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/kingsoft/mail/providers/Folder;->flags:I

    .line 406
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v6, :cond_2

    :goto_0
    iput-boolean v6, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    .line 407
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    .line 408
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "convList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    .line 410
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "childList":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    if-eqz v6, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_2
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 413
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    .line 414
    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 415
    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    .line 416
    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "refresh":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_3
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 418
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    .line 419
    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    .line 420
    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    .line 421
    const/16 v6, 0x10

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    .line 422
    const/16 v6, 0x11

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    .line 423
    const/16 v6, 0x12

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    .line 424
    const/16 v6, 0x13

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    .line 425
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 426
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->bgColorInt:I

    .line 428
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 429
    iget-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/mail/providers/Folder;->fgColorInt:I

    .line 431
    :cond_1
    const/16 v6, 0x14

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "loadMore":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_4
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    .line 433
    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->hierarchicalDesc:Ljava/lang/String;

    .line 434
    const/16 v6, 0x16

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingsoft/mail/providers/Folder;->lastMessageTimestamp:J

    .line 436
    const/16 v6, 0x17

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "parentString":Ljava/lang/String;
    if-nez v3, :cond_7

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_5
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    .line 438
    const-string/jumbo v6, "unreadSenders"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 440
    .local v5, "unreadSendersColumn":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 441
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    .line 445
    :goto_6
    const/16 v6, 0x19

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    .line 446
    return-void

    .end local v0    # "childList":Ljava/lang/String;
    .end local v1    # "convList":Ljava/lang/String;
    .end local v2    # "loadMore":Ljava/lang/String;
    .end local v3    # "parentString":Ljava/lang/String;
    .end local v4    # "refresh":Ljava/lang/String;
    .end local v5    # "unreadSendersColumn":I
    :cond_2
    move v6, v7

    .line 406
    goto/16 :goto_0

    .restart local v1    # "convList":Ljava/lang/String;
    :cond_3
    move-object v6, v8

    .line 409
    goto/16 :goto_1

    .restart local v0    # "childList":Ljava/lang/String;
    :cond_4
    move-object v6, v8

    .line 411
    goto/16 :goto_2

    .restart local v4    # "refresh":Ljava/lang/String;
    :cond_5
    move-object v6, v8

    .line 417
    goto/16 :goto_3

    .restart local v2    # "loadMore":Ljava/lang/String;
    :cond_6
    move-object v6, v8

    .line 432
    goto :goto_4

    .line 437
    .restart local v3    # "parentString":Ljava/lang/String;
    :cond_7
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    .line 443
    .restart local v5    # "unreadSendersColumn":I
    :cond_8
    iput-object v8, p0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    goto :goto_6
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    .line 73
    iput v2, p0, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->id:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    .line 466
    new-instance v3, Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v3, v0}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    .line 472
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    .line 473
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    .line 477
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColorInt:I

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColorInt:I

    .line 491
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->hierarchicalDesc:Ljava/lang/String;

    .line 493
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastMessageTimestamp:J

    .line 495
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    .line 498
    return-void

    :cond_2
    move v0, v2

    .line 470
    goto/16 :goto_0
.end method

.method public static forSearchResults(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/Context;)Lcom/kingsoft/mail/content/ObjectCursorLoader;
    .locals 5
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/kingsoft/mail/content/ObjectCursorLoader",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 540
    .local v0, "searchBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v2, "query"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 542
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v2, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v2, p2, v1, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .line 545
    .end local v0    # "searchBuilder":Landroid/net/Uri$Builder;
    .end local v1    # "searchUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder;
    .locals 12
    .param p0, "inString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 874
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, v8

    .line 921
    :goto_0
    return-object v0

    .line 877
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Folder;-><init>()V

    .line 878
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    const-string/jumbo v9, "^*^"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 879
    .local v4, "indexOf":I
    const/4 v1, -0x1

    .line 880
    .local v1, "id":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_1

    .line 881
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 887
    sget-object v9, Lcom/kingsoft/mail/providers/Folder;->SPLITTER_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p0, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, "split":[Ljava/lang/String;
    array-length v9, v5

    const/16 v10, 0x14

    if-ge v9, v10, :cond_2

    .line 889
    sget-object v9, Lcom/kingsoft/mail/providers/Folder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "split.length %d"

    new-array v6, v6, [Ljava/lang/Object;

    array-length v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v9, v10, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v8

    .line 890
    goto :goto_0

    .end local v5    # "split":[Ljava/lang/String;
    :cond_1
    move-object v0, v8

    .line 885
    goto :goto_0

    .line 892
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_2
    iput v1, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    .line 893
    const/4 v2, 0x1

    .line 894
    .local v2, "index":I
    new-instance v9, Lcom/kingsoft/mail/utils/FolderUri;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aget-object v10, v5, v2

    invoke-static {v10}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iput-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 895
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 896
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    iput-boolean v6, v0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    .line 897
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    .line 898
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    .line 899
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    .line 900
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 901
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 902
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    .line 903
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 904
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    .line 905
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    .line 906
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->type:I

    .line 907
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    .line 908
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    .line 909
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    .line 910
    iget-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 911
    iget-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->bgColorInt:I

    .line 913
    :cond_3
    iget-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 914
    iget-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/kingsoft/mail/providers/Folder;->fgColorInt:I

    .line 916
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    .line 917
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v6, v5, v3

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->hierarchicalDesc:Ljava/lang/String;

    .line 918
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Folder;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    .line 919
    iput-object v8, v0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    .line 920
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 896
    goto/16 :goto_1
.end method

.method public static getUriArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 697
    :cond_0
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/String;

    .line 705
    :cond_1
    return-object v1

    .line 699
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 700
    .local v1, "folderUris":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 701
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 702
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v4}, Lcom/kingsoft/mail/utils/FolderUri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 703
    add-int/lit8 v2, v2, 0x1

    .line 704
    goto :goto_0
.end method

.method private static getValidUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 925
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    const/4 v0, 0x0

    .line 928
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "rawFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 550
    .local v1, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 551
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v3}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 553
    .end local v0    # "f":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    return-object v1
.end method

.method public static isType(II)Z
    .locals 1
    .param p0, "typeMask"    # I
    .param p1, "folderType"    # I

    .prologue
    .line 731
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newUnsafeInstance()Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Folder;-><init>()V

    return-object v0
.end method

.method public static setFolderBlockColor(Lcom/kingsoft/mail/providers/Folder;Landroid/view/View;)V
    .locals 5
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p1, "colorBlock"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 643
    if-nez p1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 648
    .local v2, "showBg":Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 649
    .local v0, "backgroundColor":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->getDefaultFolderBackgroundColor(Landroid/content/Context;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 650
    const/4 v2, 0x0

    .line 652
    :cond_1
    if-nez v2, :cond_4

    .line 653
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "backgroundColor":I
    .end local v2    # "showBg":Z
    :cond_2
    move v2, v3

    .line 646
    goto :goto_1

    .restart local v2    # "showBg":Z
    :cond_3
    move v0, v3

    .line 648
    goto :goto_2

    .line 656
    .restart local v0    # "backgroundColor":I
    :cond_4
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 657
    .local v1, "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setIcon(Lcom/kingsoft/mail/providers/Folder;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 664
    if-nez p1, :cond_0

    .line 675
    :goto_0
    return-void

    .line 667
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    .line 668
    .local v0, "icon":I
    if-lez v0, :cond_1

    .line 669
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 670
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 672
    :cond_1
    const v1, 0x7f0201a1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/kingsoft/mail/providers/Folder;)I
    .locals 2
    .param p1, "other"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lcom/kingsoft/mail/providers/Folder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/Folder;->compareTo(Lcom/kingsoft/mail/providers/Folder;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 598
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/kingsoft/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    const/4 v0, 0x0

    .line 601
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    check-cast p1, Lcom/kingsoft/mail/providers/Folder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackgroundColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/kingsoft/mail/providers/Folder;->bgColorInt:I

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getForegroundColor(I)I
    .locals 1
    .param p1, "defaultColor"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/kingsoft/mail/providers/Folder;->fgColorInt:I

    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 815
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inbox_section:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 817
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 819
    .end local v0    # "desc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    const-string/jumbo v0, "draft"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v0    # "desc":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isImportantOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    const-string/jumbo v0, "important"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 823
    .end local v0    # "desc":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 824
    const-string/jumbo v0, "outbox"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 825
    .end local v0    # "desc":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 826
    const-string/jumbo v0, "sent"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 827
    .end local v0    # "desc":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 828
    const-string/jumbo v0, "spam"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 829
    .end local v0    # "desc":Ljava/lang/String;
    :cond_6
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 830
    const-string/jumbo v0, "starred"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 831
    .end local v0    # "desc":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 832
    const-string/jumbo v0, "trash"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 833
    .end local v0    # "desc":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 834
    const-string/jumbo v0, "unread"

    .restart local v0    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 835
    .end local v0    # "desc":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isViewAll()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 836
    const-string/jumbo v0, "all_mail"

    .restart local v0    # "desc":Ljava/lang/String;
    goto/16 :goto_0

    .line 837
    .end local v0    # "desc":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "other:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "desc":Ljava/lang/String;
    goto/16 :goto_0

    .line 840
    .end local v0    # "desc":Ljava/lang/String;
    :cond_b
    const-string/jumbo v0, "user_folder"

    .restart local v0    # "desc":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/FolderUri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isCombineInbox()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 798
    iget-object v5, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v5, v5, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 799
    .local v2, "id":J
    const-wide/32 v5, 0x10000000

    invoke-static {v5, v6, v4}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v0

    .line 800
    .local v0, "combinedID":J
    cmp-long v5, v2, v0

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isDraft()Z
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isImportantOnly()Z
    .locals 1

    .prologue
    .line 792
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    return v0
.end method

.method public isInbox()Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    const-string/jumbo v1, "Uninitialized!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutbox()Z
    .locals 1

    .prologue
    .line 756
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isProviderFolder()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 763
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isStarredFolder()Z
    .locals 1

    .prologue
    .line 778
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isSyncInProgress()Z
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    invoke-static {v0}, Lcom/kingsoft/mail/providers/UIProvider$SyncStatus;->isSyncInProgress(I)Z

    move-result v0

    return v0
.end method

.method public isTrash()Z
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isType(I)Z
    .locals 1
    .param p1, "folderType"    # I

    .prologue
    .line 717
    if-nez p1, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x1

    .line 721
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    invoke-static {v0, p1}, Lcom/kingsoft/mail/providers/Folder;->isType(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final isUnreadCountHidden()Z
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnreadFolder()Z
    .locals 1

    .prologue
    .line 771
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isViewAll()Z
    .locals 1

    .prologue
    .line 807
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isVirtualFolder()Z
    .locals 1

    .prologue
    .line 785
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 637
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[folder id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    sget-object v1, Lcom/kingsoft/mail/providers/Folder;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const-string/jumbo v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final wasSyncSuccessful()Z
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 502
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 505
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->capabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 511
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 512
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 516
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->syncStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->notificationIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->bgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->fgColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->hierarchicalDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 526
    iget-wide v2, p0, Lcom/kingsoft/mail/providers/Folder;->lastMessageTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 527
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 528
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 530
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 508
    goto :goto_1
.end method
