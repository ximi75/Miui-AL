.class Lcom/kingsoft/mail/browse/AttachmentActionHandler$1;
.super Ljava/lang/Object;
.source "AttachmentActionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachmentAlertDialog(Ljava/lang/Long;ILcom/kingsoft/mail/providers/Attachment;IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$1;->this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    return-void
.end method
