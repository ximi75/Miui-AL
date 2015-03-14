.class Lcom/kingsoft/mail/ui/RecentFolderList$1;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/RecentFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/RecentFolderList;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/RecentFolderList;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingsoft/mail/ui/RecentFolderList$1;->this$0:Lcom/kingsoft/mail/ui/RecentFolderList;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList$1;->this$0:Lcom/kingsoft/mail/ui/RecentFolderList;

    # invokes: Lcom/kingsoft/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V
    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/RecentFolderList;->access$000(Lcom/kingsoft/mail/ui/RecentFolderList;Lcom/kingsoft/mail/providers/Account;)V

    .line 75
    return-void
.end method
