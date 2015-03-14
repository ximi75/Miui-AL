.class public Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/DestructiveAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationAction"
.end annotation


# instance fields
.field private final mAction:I

.field private mCompleted:Z

.field private final mIsSelectedSet:Z

.field private final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;ILjava/util/Collection;Z)V
    .locals 1
    .param p2, "action"    # I
    .param p4, "isBatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3775
    .local p3, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3776
    iput p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    .line 3777
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    .line 3778
    iput-boolean p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    .line 3779
    return-void
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    .prologue
    .line 3755
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    .prologue
    .line 3755
    iget v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    return v0
.end method

.method private declared-synchronized isPerformed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3885
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3889
    :goto_0
    monitor-exit p0

    return v0

    .line 3888
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3889
    const/4 v0, 0x0

    goto :goto_0

    .line 3885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public performAction()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3787
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->isPerformed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3790
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/16 v5, 0x4000

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    .line 3793
    .local v3, "undoEnabled":Z
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3794
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-static {v7}, Lcom/kingsoft/mail/providers/Conversation;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3799
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-nez v4, :cond_3

    .line 3800
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "null ConversationCursor in ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-static {v7}, Lcom/kingsoft/mail/providers/Conversation;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3806
    :cond_3
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c0270

    if-ne v4, v5, :cond_6

    .line 3807
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Archiving"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3808
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->archive(Ljava/util/Collection;)I

    .line 3865
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 3866
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)V

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mShowUndoBarDelay:I
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1100(Lcom/kingsoft/mail/ui/AbstractActivityController;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3874
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 3875
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z

    if-eqz v4, :cond_0

    .line 3876
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    goto/16 :goto_0

    .line 3809
    :cond_6
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c026d

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c016d

    if-ne v4, v5, :cond_8

    .line 3810
    :cond_7
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Deleting"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3811
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 3812
    const/4 v3, 0x0

    goto :goto_1

    .line 3820
    :cond_8
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c0279

    if-ne v4, v5, :cond_a

    .line 3821
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Muting"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3822
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3823
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 3824
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iput-boolean v9, v0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_2

    .line 3827
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->mute(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 3828
    :cond_a
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c027b

    if-ne v4, v5, :cond_b

    .line 3829
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Reporting spam"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3830
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->reportSpam(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 3831
    :cond_b
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c027c

    if-ne v4, v5, :cond_c

    .line 3832
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Marking not spam"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3833
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->reportNotSpam(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 3834
    :cond_c
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c027d

    if-ne v4, v5, :cond_d

    .line 3835
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Reporting phishing"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3836
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->reportPhishing(Ljava/util/Collection;)I

    goto/16 :goto_1

    .line 3837
    :cond_d
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c0288

    if-ne v4, v5, :cond_e

    .line 3838
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Removing star"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3840
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    const-string/jumbo v6, "starred"

    invoke-virtual {v4, v5, v6, v8}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I

    goto/16 :goto_1

    .line 3842
    :cond_e
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c0278

    if-ne v4, v5, :cond_10

    .line 3843
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Marking not-important"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3846
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->isImportantOnly()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3847
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 3848
    .local v1, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iput-boolean v9, v1, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_3

    .line 3851
    .end local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    const-string/jumbo v6, "priority"

    invoke-virtual {v4, v5, v6, v8}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateInt(Ljava/util/Collection;Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 3853
    :cond_10
    iget v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I

    const v5, 0x7f0c0272

    if-ne v4, v5, :cond_4

    .line 3854
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Discarding draft messages"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3856
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3857
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 3858
    .restart local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    iput-boolean v9, v1, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_4

    .line 3861
    .end local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_11
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->discardDrafts(Ljava/util/Collection;)I

    .line 3863
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
