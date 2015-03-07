.class Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;
.super Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .param p2, "x0"    # Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    invoke-direct {p0, p2}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 188
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v6

    .line 189
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->access$200()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->access$300(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->access$400(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->access$300(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    return-void
.end method
