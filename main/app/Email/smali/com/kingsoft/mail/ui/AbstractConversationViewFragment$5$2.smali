.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;
.super Ljava/lang/Object;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->onBodySyncFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;->this$1:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;->this$1:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$700(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;->this$1:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$700(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;->dismissAllowingStateLoss()V

    .line 842
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5$2;->this$1:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$702(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;)Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    .line 844
    :cond_0
    return-void
.end method
