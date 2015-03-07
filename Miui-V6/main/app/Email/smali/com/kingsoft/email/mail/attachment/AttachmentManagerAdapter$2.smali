.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;
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

.field final synthetic val$attId:I

.field final synthetic val$state:I

.field final synthetic val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;ILcom/kingsoft/email/mail/attachment/ViewHolder;I)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    iput p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$state:I

    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iput p4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$attId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 303
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    const/16 v1, 0x102

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$attId:I

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->sendMessageByHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;II)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$state:I

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$viewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->saveIcon:Lcom/kingsoft/email/mail/attachment/ProgressImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    const/16 v1, 0x101

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->val$attId:I

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->sendMessageByHandler(II)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;II)V

    .line 311
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    goto :goto_0
.end method
