.class Lcom/kingsoft/mail/ui/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->invalidateViews()V

    .line 495
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$1000(Lcom/kingsoft/mail/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$5;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$800(Lcom/kingsoft/mail/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$900()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    return-void
.end method
