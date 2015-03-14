.class Lcom/kingsoft/email/provider/EmailProvider$5;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/EmailProvider;->getDelayedSyncHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;)V
    .locals 0

    .prologue
    .line 8742
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$5;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8745
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$5;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;
    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->access$1300(Lcom/kingsoft/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 8746
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    .line 8751
    .local v2, "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    # getter for: Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->access$1400(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)Landroid/accounts/Account;

    move-result-object v0

    .line 8752
    .local v0, "account":Landroid/accounts/Account;
    # getter for: Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J
    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->access$1500(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v1

    .line 8754
    .local v1, "extras":Landroid/os/Bundle;
    # getter for: Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;
    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->access$1600(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8756
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$5;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;
    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->access$1300(Lcom/kingsoft/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8757
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 8758
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
