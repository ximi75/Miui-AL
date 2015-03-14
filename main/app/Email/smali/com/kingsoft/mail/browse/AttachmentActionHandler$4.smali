.class Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;
.super Ljava/lang/Object;
.source "AttachmentActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/AttachmentActionHandler;->updateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

.field final synthetic val$dialog:Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;->this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iput-object p2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;->val$dialog:Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$4;->val$dialog:Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/AttachmentProgressDialogFragment;->dismiss()V

    .line 399
    return-void
.end method
