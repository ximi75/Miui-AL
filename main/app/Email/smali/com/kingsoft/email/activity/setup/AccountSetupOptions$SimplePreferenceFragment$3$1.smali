.class Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->optionsComplete()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V

    .line 424
    return-void
.end method
