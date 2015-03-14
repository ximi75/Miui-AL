.class Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    .line 711
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 712
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    const-string/jumbo v0, "mailbox changed"

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 720
    :cond_0
    return-void
.end method
