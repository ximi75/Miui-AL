.class Lcom/kingsoft/email/activity/setup/AccountSettings$1;
.super Landroid/database/ContentObserver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettings;->updateAccounts()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettings;)V

    .line 270
    return-void
.end method
