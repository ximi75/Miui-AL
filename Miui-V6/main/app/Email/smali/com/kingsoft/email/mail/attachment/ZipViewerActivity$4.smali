.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$4;
.super Ljava/lang/Object;
.source "ZipViewerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 462
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$4;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$4;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->access$800(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    const/4 v0, 0x1

    return v0
.end method
