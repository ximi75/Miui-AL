.class final Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$2;
.super Ljava/lang/Object;
.source "AttachmentManagerUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->unzipAndOpenFile(Landroid/content/Context;Lnet/lingala/zip4j/core/ZipFile;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/email/mail/attachment/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1003d7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    return-void
.end method
