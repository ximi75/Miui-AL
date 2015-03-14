.class Lcom/kingsoft/mail/ui/MailActionBarView$6;
.super Ljava/lang/Object;
.source "MailActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;->onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V
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
    .line 1333
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$6;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$6;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # invokes: Lcom/kingsoft/mail/ui/MailActionBarView;->onFolderChanged()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$500(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    .line 1338
    return-void
.end method
