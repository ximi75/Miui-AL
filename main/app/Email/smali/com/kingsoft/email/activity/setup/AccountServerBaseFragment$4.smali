.class Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$settingsResult:I


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;I)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iput p2, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 310
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterEdit()V

    .line 317
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterSetup()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iget-object v2, v2, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 324
    return-void
.end method
