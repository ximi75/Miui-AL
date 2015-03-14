.class Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;
.super Ljava/lang/Object;
.source "RefreshStatusMonitor.java"

# interfaces
.implements Lcom/kingsoft/mail/utils/StorageLowState$LowStorageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/RefreshStatusMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageLow()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z
    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$002(Lcom/kingsoft/email/provider/RefreshStatusMonitor;Z)Z

    .line 58
    return-void
.end method

.method public onStorageOk()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z
    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$002(Lcom/kingsoft/email/provider/RefreshStatusMonitor;Z)Z

    .line 63
    return-void
.end method
