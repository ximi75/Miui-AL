.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 393
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 398
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$100(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, "temList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$100(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    .line 401
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 402
    return-void
.end method
