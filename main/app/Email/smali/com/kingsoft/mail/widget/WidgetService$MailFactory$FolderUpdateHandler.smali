.class Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;
.super Lcom/kingsoft/mail/utils/DelayedTaskHandler;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/widget/WidgetService$MailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/widget/WidgetService$MailFactory;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;I)V
    .locals 1
    .param p2, "refreshDelay"    # I

    .prologue
    .line 667
    iput-object p1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->this$0:Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    .line 668
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/kingsoft/mail/utils/DelayedTaskHandler;-><init>(Landroid/os/Looper;I)V

    .line 669
    return-void
.end method


# virtual methods
.method protected performTask()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->this$0:Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    # getter for: Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->access$200(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->this$0:Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    # getter for: Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->access$200(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 677
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->this$0:Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    # getter for: Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;
    invoke-static {v0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->access$200(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 679
    :cond_0
    return-void
.end method
