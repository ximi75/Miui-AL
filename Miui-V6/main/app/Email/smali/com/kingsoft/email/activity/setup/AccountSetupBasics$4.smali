.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focus"    # Z

    .prologue
    .line 407
    if-eqz p2, :cond_1

    .line 408
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$300(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->startGetPrompt()V

    .line 409
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginValidbyHua()V

    .line 419
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$300(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->endGetPrompt()V

    .line 421
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getDomain()Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$400(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v1, v1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getDomain()Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$400(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->excute(Ljava/lang/String;)V

    goto :goto_0
.end method
