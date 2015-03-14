.class Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Notify_Runable"
.end annotation


# instance fields
.field private accountID:J

.field private mailboxID:J

.field private mailboxType:I

.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;JJI)V
    .locals 0
    .param p2, "maID"    # J
    .param p4, "acID"    # J
    .param p6, "maType"    # I

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-wide p2, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->mailboxID:J

    .line 1045
    iput-wide p4, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->accountID:J

    .line 1046
    iput p6, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->mailboxType:I

    .line 1047
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1051
    # setter for: Lcom/kingsoft/email/provider/EmailProvider;->mIsNotifying:Z
    invoke-static {v0}, Lcom/kingsoft/email/provider/EmailProvider;->access$002(Z)Z

    .line 1052
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/kingsoft/email/provider/EmailProvider;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1053
    const-string/jumbo v0, "Email"

    const-string/jumbo v1, "hzb Notify_Runable out while"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1054
    :goto_0
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$100()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$100()Ljava/lang/Boolean;

    move-result-object v7

    monitor-enter v7

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    iget-wide v1, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->mailboxID:J

    iget-wide v3, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->accountID:J

    iget v5, p0, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;->mailboxType:I

    # invokes: Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderWithFolderType(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->access$200(Lcom/kingsoft/email/provider/EmailProvider;JJI)V

    .line 1059
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/kingsoft/email/provider/EmailProvider;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1060
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v6

    .line 1066
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1060
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1069
    :cond_0
    # setter for: Lcom/kingsoft/email/provider/EmailProvider;->mIsNotifying:Z
    invoke-static {v8}, Lcom/kingsoft/email/provider/EmailProvider;->access$002(Z)Z

    .line 1070
    return-void
.end method
