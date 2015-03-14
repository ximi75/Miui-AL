.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;
.super Landroid/os/Handler;
.source "ZipViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 110
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$000(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 103
    :sswitch_1
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$000(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x201 -> :sswitch_2
    .end sparse-switch
.end method
