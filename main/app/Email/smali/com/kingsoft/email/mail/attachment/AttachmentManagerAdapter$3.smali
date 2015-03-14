.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;
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

.field final synthetic val$strSenderAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;->val$strSenderAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "senderAddress"

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;->val$strSenderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method
