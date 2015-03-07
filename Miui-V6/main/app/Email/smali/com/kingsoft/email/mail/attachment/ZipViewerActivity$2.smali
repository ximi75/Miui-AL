.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;
.super Ljava/lang/Object;
.source "ZipViewerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 319
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 324
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/FileInfo;

    .line 325
    .local v1, "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "unzippedFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "f":Ljava/io/File;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;

    invoke-direct {v5, p0, v1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2$1;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;Lcom/kingsoft/email/mail/attachment/FileInfo;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 389
    return-void
.end method
