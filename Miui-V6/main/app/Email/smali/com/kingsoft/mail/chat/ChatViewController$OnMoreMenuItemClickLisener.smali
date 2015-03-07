.class Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kingsoft/mail/adapter/BottomBarAdapter$IMoreMenuLogic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMoreMenuItemClickLisener"
.end annotation


# instance fields
.field private cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field private conversation:Lcom/kingsoft/mail/providers/Conversation;

.field private index:I

.field private mListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

.field private message:Lcom/kingsoft/mail/browse/ConversationMessage;

.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 1
    .param p2, "index"    # I
    .param p3, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p4, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->index:I

    .line 771
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 772
    iput-object p4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 773
    if-eqz p4, :cond_0

    .line 774
    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->getMessageFromConversation(Lcom/kingsoft/mail/providers/Conversation;Landroid/content/Context;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 776
    :cond_0
    return-void
.end method

.method static synthetic access$2400(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method private getQuickReplyCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1010
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v6

    .line 1011
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->ACCOUNT_ID_URI:Landroid/net/Uri;

    iget-object v2, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1012
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "quickResponse"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v1, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/chat/ChatCache;->getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1029
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v1, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/chat/ChatCache;->removeColumnSafely(J)Z

    .line 1031
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->sendRefreshBroadCast(Landroid/content/Context;Z)V

    .line 1032
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1033
    const-string/jumbo v0, "C08"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1037
    :goto_1
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActivity;->getmController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    goto :goto_0

    .line 1035
    :cond_1
    const-string/jumbo v0, "C16"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public forward()V
    .locals 4

    .prologue
    .line 881
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2100()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->forward(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 886
    const-string/jumbo v0, "C03"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_1
    const-string/jumbo v0, "C11"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markUnRead()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 935
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-nez v3, :cond_0

    move v1, v2

    .line 936
    .local v1, "read":Z
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V

    .line 937
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iput-boolean v1, v3, Lcom/kingsoft/mail/providers/Message;->read:Z

    .line 938
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 939
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "read"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 940
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v4

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 941
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 942
    const-string/jumbo v2, "C06"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 946
    :goto_1
    return-void

    .line 935
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "read":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 944
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "read":Z
    :cond_1
    const-string/jumbo v2, "C14"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public moveTo()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 894
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v2

    .line 895
    .local v2, "updater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    const/4 v8, 0x0

    .line 896
    .local v8, "isBatch":Z
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFolder(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    .line 897
    .local v5, "currentFolder":Lcom/kingsoft/mail/providers/Folder;
    const/4 v9, 0x0

    .line 898
    .local v9, "isMoveTo":Z
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2100()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->getInstance(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;Z)Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    move-result-object v7

    .line 902
    .local v7, "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    if-eqz v7, :cond_0

    .line 903
    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->show()V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 907
    const-string/jumbo v0, "C04"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_1
    const-string/jumbo v0, "C12"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 781
    .local v1, "isItemSelected":Z
    const/4 v2, 0x0

    .line 782
    .local v2, "isMoveTo":Z
    packed-switch p3, :pswitch_data_0

    .line 835
    const/4 v1, 0x0

    .line 838
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1900(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 851
    :cond_1
    :goto_1
    return-void

    .line 784
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->reply()V

    goto :goto_0

    .line 787
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->replyAll()V

    goto :goto_0

    .line 790
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->forward()V

    goto :goto_0

    .line 793
    :pswitch_3
    const/4 v2, 0x1

    .line 794
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1900(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->moveTo()V

    goto :goto_0

    .line 798
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->star()V

    goto :goto_0

    .line 801
    :pswitch_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->markUnRead()V

    goto :goto_0

    .line 804
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->quickReply()V

    goto :goto_0

    .line 807
    :pswitch_7
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getConfirmDelete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 808
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2000(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/kingsoft/mail/chat/ChatViewControllerCallback;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 809
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0002

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f10012f

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100107

    new-instance v6, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$2;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$2;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f10016a

    new-instance v6, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$1;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 831
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->delete()V

    goto/16 :goto_0

    .line 841
    :cond_3
    if-eqz v1, :cond_1

    .line 842
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->mListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

    if-eqz v4, :cond_4

    .line 843
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->mListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

    invoke-interface {v4, p3}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;->onItemClick(I)V

    .line 845
    :cond_4
    const/4 v4, 0x6

    if-eq p3, v4, :cond_5

    .line 846
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 848
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    .line 849
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    goto/16 :goto_1

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public quickReply()V
    .locals 11

    .prologue
    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 952
    .local v5, "quickRes":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->getQuickReplyCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 953
    const/4 v6, 0x0

    .line 954
    .local v6, "size":I
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 955
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 956
    const-string/jumbo v8, "quickResponse"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 957
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 958
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 959
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 962
    move-object v7, v5

    .line 963
    .local v7, "source":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 964
    new-instance v4, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;

    invoke-direct {v4, p0, v7}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;[Ljava/lang/String;)V

    .line 993
    .local v4, "oicl":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    new-instance v9, Lcom/kingsoft/mail/compose/AnswerDialog;

    iget-object v10, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v10}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kingsoft/mail/compose/AnswerDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8, v9}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2202(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/compose/AnswerDialog;)Lcom/kingsoft/mail/compose/AnswerDialog;

    .line 994
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v9

    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-virtual {v9, v8}, Lcom/kingsoft/mail/compose/AnswerDialog;->setActivity(Landroid/app/Activity;)V

    .line 995
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/mail/compose/AnswerDialog;->show()V

    .line 996
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v8

    const v9, 0x7f10030d

    invoke-virtual {v8, v9}, Lcom/kingsoft/mail/compose/AnswerDialog;->setTitleText(I)V

    .line 997
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/mail/compose/AnswerDialog;->setButtonPanelDismiss()V

    .line 998
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v8}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/kingsoft/mail/compose/AnswerDialog;->setItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "oicl":Landroid/widget/AdapterView$OnItemClickListener;
    .end local v7    # "source":[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 1004
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1007
    .end local v6    # "size":I
    :cond_2
    :goto_1
    return-void

    .line 1000
    :catch_0
    move-exception v1

    .line 1001
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "------>quickReply"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    if-eqz v0, :cond_2

    .line 1004
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1003
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_3

    .line 1004
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v8
.end method

.method public reply()V
    .locals 4

    .prologue
    .line 855
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2100()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->reply(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 860
    const-string/jumbo v0, "C01"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 864
    :goto_0
    return-void

    .line 862
    :cond_1
    const-string/jumbo v0, "C09"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public replyAll()V
    .locals 4

    .prologue
    .line 868
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2100()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->message:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->replyAll(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 873
    const-string/jumbo v0, "C02"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_1
    const-string/jumbo v0, "C10"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIMoreMenuItemClickLisener(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->mListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

    .line 1041
    return-void
.end method

.method public star()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 915
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Message;->starred:Z

    if-nez v2, :cond_0

    move v1, v3

    .line 917
    .local v1, "isStarred":Z
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V

    .line 918
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iput-boolean v1, v2, Lcom/kingsoft/mail/providers/Message;->starred:Z

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v0, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/MailActivity;->getmController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v2

    const-string/jumbo v4, "starred"

    invoke-interface {v2, v0, v4, v1}, Lcom/kingsoft/mail/ui/ActivityController;->updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 926
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 927
    const-string/jumbo v2, "C05"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 931
    :goto_1
    return-void

    .line 915
    .end local v0    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .end local v1    # "isStarred":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 929
    .restart local v0    # "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .restart local v1    # "isStarred":Z
    :cond_1
    const-string/jumbo v2, "C13"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_1
.end method
