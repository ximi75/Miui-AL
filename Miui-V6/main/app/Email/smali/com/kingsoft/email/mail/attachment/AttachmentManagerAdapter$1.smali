.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;
.super Ljava/lang/Object;
.source "AttachmentManagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

.field final synthetic val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;Lcom/kingsoft/email/mail/attachment/ViewHolder;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "attId":I
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    const/16 v2, 0x64

    iput v2, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    .line 213
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 214
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->access$000(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x303

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v3, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 215
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$1;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;)V

    .line 216
    return-void
.end method
