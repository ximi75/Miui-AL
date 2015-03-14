.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1579
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1583
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$1100(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    .line 1587
    .local v0, "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$1200(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v1, v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFirstProviderByProtocal(I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    invoke-static {v3, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$1300(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v1

    iput-object v1, v2, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
