.class Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$4;
.super Ljava/lang/Object;
.source "AccountSetupServerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 294
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->validateFields()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->access$100(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    .line 298
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 308
    return-void
.end method
