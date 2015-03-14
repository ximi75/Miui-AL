.class Lcom/kingsoft/mail/ui/MailActionBarView$5;
.super Lcom/kingsoft/mail/providers/FolderObserver;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;->initialize(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ActivityController;Landroid/app/ActionBar;Lcom/kingsoft/mail/providers/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$5;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/FolderObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "newFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$5;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V

    .line 514
    return-void
.end method
