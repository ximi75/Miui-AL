.class Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$5;
.super Ljava/lang/Object;
.source "AccountSetupServerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onProtocalChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 443
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    .line 444
    return-void
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
    .line 448
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
