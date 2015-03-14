.class Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->showErrorDialog(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    iput p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->val$msgResId:I

    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 444
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    const v2, 0x7f10006f

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    iget v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->val$msgResId:I

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    const v2, 0x7f10006c

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 462
    return-void
.end method
