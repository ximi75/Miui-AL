.class public final Lcom/kingsoft/mail/providers/Folder$Builder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBgColor:Ljava/lang/String;

.field private mCapabilities:I

.field private mChildFoldersListUri:Landroid/net/Uri;

.field private mConversationListUri:Landroid/net/Uri;

.field private mFgColor:Ljava/lang/String;

.field private mHasChildren:Z

.field private mHierarchicalDesc:Ljava/lang/String;

.field private mIconResId:I

.field private mId:I

.field private mLastMessageTimestamp:J

.field private mLastSyncResult:I

.field private mLastSyncTimestamp:J

.field private mLoadMoreUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mNotificationIconResId:I

.field private mParent:Landroid/net/Uri;

.field private mPersistentId:Ljava/lang/String;

.field private mRefreshUri:Landroid/net/Uri;

.field private mSyncStatus:I

.field private mSyncWindow:I

.field private mTotalCount:I

.field private mType:I

.field private mUnreadCount:I

.field private mUnreadSenders:Ljava/lang/String;

.field private mUnseenCount:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/kingsoft/mail/providers/Folder;
    .locals 31

    .prologue
    .line 243
    new-instance v2, Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mPersistentId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mCapabilities:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mHasChildren:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mSyncWindow:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mConversationListUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mChildFoldersListUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnseenCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnreadCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mTotalCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mRefreshUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mSyncStatus:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastSyncResult:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mIconResId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mNotificationIconResId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mBgColor:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mFgColor:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLoadMoreUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mHierarchicalDesc:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mParent:Landroid/net/Uri;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastMessageTimestamp:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnreadSenders:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastSyncTimestamp:J

    move-wide/from16 v29, v0

    invoke-direct/range {v2 .. v30}, Lcom/kingsoft/mail/providers/Folder;-><init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IZILandroid/net/Uri;Landroid/net/Uri;IIILandroid/net/Uri;IIIIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;J)V

    return-object v2
.end method

.method public setBgColor(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "bgColor"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mBgColor:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setCapabilities(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "capabilities"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mCapabilities:I

    .line 269
    return-object p0
.end method

.method public setChildFoldersListUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "childFoldersListUri"    # Landroid/net/Uri;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mChildFoldersListUri:Landroid/net/Uri;

    .line 285
    return-object p0
.end method

.method public setConversationListUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "conversationListUri"    # Landroid/net/Uri;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mConversationListUri:Landroid/net/Uri;

    .line 281
    return-object p0
.end method

.method public setFgColor(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "fgColor"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mFgColor:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public setHasChildren(Z)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "hasChildren"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mHasChildren:Z

    .line 273
    return-object p0
.end method

.method public setHierarchicalDesc(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "hierarchicalDesc"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mHierarchicalDesc:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public setIconResId(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mIconResId:I

    .line 317
    return-object p0
.end method

.method public setId(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mId:I

    .line 253
    return-object p0
.end method

.method public setLastMessageTimestamp(J)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "lastMessageTimestamp"    # J

    .prologue
    .line 344
    iput-wide p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastMessageTimestamp:J

    .line 345
    return-object p0
.end method

.method public setLastSyncResult(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "lastSyncResult"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastSyncResult:I

    .line 309
    return-object p0
.end method

.method public setLastSyncTimestamp(J)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "lastSyncTimestamp"    # J

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLastSyncTimestamp:J

    .line 353
    return-object p0
.end method

.method public setLoadMoreUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "loadMoreUri"    # Landroid/net/Uri;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mLoadMoreUri:Landroid/net/Uri;

    .line 333
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mName:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public setNotificationIconResId(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "notificationIconResId"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mNotificationIconResId:I

    .line 321
    return-object p0
.end method

.method public setParent(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "parent"    # Landroid/net/Uri;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mParent:Landroid/net/Uri;

    .line 341
    return-object p0
.end method

.method public setPersistentId(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "persistentId"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mPersistentId:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setRefreshUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "refreshUri"    # Landroid/net/Uri;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mRefreshUri:Landroid/net/Uri;

    .line 301
    return-object p0
.end method

.method public setSyncStatus(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "syncStatus"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mSyncStatus:I

    .line 305
    return-object p0
.end method

.method public setSyncWindow(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "syncWindow"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mSyncWindow:I

    .line 277
    return-object p0
.end method

.method public setTotalCount(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mTotalCount:I

    .line 297
    return-object p0
.end method

.method public setType(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mType:I

    .line 313
    return-object p0
.end method

.method public setUnreadCount(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnreadCount:I

    .line 293
    return-object p0
.end method

.method public setUnreadSenders(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "unreadSenders"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnreadSenders:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public setUnseenCount(I)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "unseenCount"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUnseenCount:I

    .line 289
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Folder$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Folder$Builder;->mUri:Landroid/net/Uri;

    .line 261
    return-object p0
.end method
