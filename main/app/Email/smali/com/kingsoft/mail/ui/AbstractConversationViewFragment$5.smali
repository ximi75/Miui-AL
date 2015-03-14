.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;
.super Ljava/lang/Object;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getMessageBodySynclistener()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodySyncFailed()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUnloadedMessage:Z

    .line 851
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$900(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$3;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method public onBodySyncFinished()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$900(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public onBodySyncStart()V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCurTime:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$602(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;J)J

    .line 821
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$900(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$1;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 833
    return-void
.end method
