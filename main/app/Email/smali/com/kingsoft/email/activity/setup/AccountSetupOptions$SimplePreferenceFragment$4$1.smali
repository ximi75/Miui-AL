.class Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;->this$1:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->finish()V

    .line 459
    :cond_0
    return-void
.end method
