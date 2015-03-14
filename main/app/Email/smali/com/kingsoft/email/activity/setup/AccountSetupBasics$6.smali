.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->autoSystemAccountPrompt(Ljava/lang/String;)V
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
    .line 730
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 736
    :cond_0
    return-void
.end method
