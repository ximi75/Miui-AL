.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 672
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v7, p2, Lcom/kingsoft/mail/browse/ConversationItemView;

    if-eqz v7, :cond_0

    .line 673
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 755
    :goto_0
    return-void

    .line 677
    :cond_0
    const v7, 0x7f0c00ca

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 678
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 679
    const v7, 0x7f0c00c7

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 680
    .local v4, "o":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 682
    .end local v4    # "o":Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 684
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v0, :cond_2

    .line 685
    const-string/jumbo v7, "AttachmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attachment id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is deleted!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 686
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1000ed

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 690
    :cond_2
    invoke-static {v0}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertAttachmentToUiAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v5

    .line 692
    .local v5, "uiAttachment":Lcom/kingsoft/mail/providers/Attachment;
    invoke-static {p4, p5}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v2

    .line 693
    .local v2, "isCanceling":Z
    if-eqz v2, :cond_3

    .line 694
    const-string/jumbo v7, "AttachmentManager"

    const-string/jumbo v8, "it is canceling the downloading now, please wait..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 695
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1000e8

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 699
    :cond_3
    invoke-static {p4, p5}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isDecoding(J)Z

    move-result v3

    .line 700
    .local v3, "isDecoding":Z
    if-eqz v3, :cond_4

    .line 701
    const-string/jumbo v7, "AttachmentManager"

    const-string/jumbo v8, "it is decoding the attachment now, please wait..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 702
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1000e9

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 706
    :cond_4
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isAttachmentSaved(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 707
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 711
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->moveAttachmentToExternal(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "fp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 714
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 716
    :cond_5
    const/4 v7, 0x1

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 719
    .end local v1    # "fp":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->showAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v7, v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$2000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto/16 :goto_0

    .line 721
    :cond_7
    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    if-nez v7, :cond_9

    .line 723
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v7, v8}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isEligibleForDownloadExternal(J)Z

    move-result v7

    if-nez v7, :cond_8

    .line 724
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f100175

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 729
    :cond_8
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 734
    :cond_9
    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 735
    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_a

    .line 736
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f10034e

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 739
    :cond_a
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 747
    :cond_b
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$7;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachment(Lcom/kingsoft/mail/providers/Attachment;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    goto/16 :goto_0
.end method
