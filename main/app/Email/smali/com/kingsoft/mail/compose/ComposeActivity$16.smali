.class Lcom/kingsoft/mail/compose/ComposeActivity$16;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->updateAttachmentsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

.field final synthetic val$attachments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 4117
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->val$attachments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4120
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$3000(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/AttachmentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/compose/AttachmentsView;->deleteAllAttachments()V

    .line 4122
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->val$attachments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 4124
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$3000(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/AttachmentsView;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity$16;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v4, v4, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v4, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J
    :try_end_0
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4125
    :catch_0
    move-exception v1

    .line 4126
    .local v1, "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->printStackTrace()V

    .line 4130
    .end local v0    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .end local v1    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    :cond_0
    return-void
.end method
