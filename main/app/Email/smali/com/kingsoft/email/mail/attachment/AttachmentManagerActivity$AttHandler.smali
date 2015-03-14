.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;
.super Landroid/os/Handler;
.source "AttachmentManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
    .param p2, "x1"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "attId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, "attId":I
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 407
    .local v1, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x101

    if-ne v4, v5, :cond_0

    .line 408
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v4, v7, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    .line 445
    :goto_0
    return-void

    .line 414
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x102

    if-ne v4, v5, :cond_1

    .line 415
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v6}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto :goto_0

    .line 421
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x105

    if-ne v4, v5, :cond_2

    .line 422
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->clearDownloadAttachment(Ljava/lang/Long;)V

    goto :goto_0

    .line 424
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x103

    if-ne v4, v5, :cond_3

    .line 425
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mNoAttachment:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 428
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 429
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x104

    if-ne v4, v5, :cond_4

    .line 430
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mNoAttachment:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 434
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x201

    if-ne v4, v5, :cond_5

    .line 435
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/mail/attachment/FlingListView;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/FlingListView;->clearState()V

    .line 436
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1400(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lmiui/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 437
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x303

    if-ne v4, v5, :cond_6

    .line 438
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v4

    .line 439
    .local v2, "deletedId":J
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAttachmentActionHandler:Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->deleteAttachment(Ljava/lang/Long;)V

    .line 440
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/mail/attachment/FlingListView;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/attachment/FlingListView;->clearState()V

    goto/16 :goto_0

    .line 443
    .end local v2    # "deletedId":J
    :cond_6
    const-string/jumbo v4, "AttachmentManager"

    const-string/jumbo v5, "Unknown command ID : %d"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method
