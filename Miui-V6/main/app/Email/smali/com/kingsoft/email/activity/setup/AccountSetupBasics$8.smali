.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->createAccountType()V
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
    .line 1563
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$900(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 1567
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$1002(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z

    .line 1568
    return-void
.end method
