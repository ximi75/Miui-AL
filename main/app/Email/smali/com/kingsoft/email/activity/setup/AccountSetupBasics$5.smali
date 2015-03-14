.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$5;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 441
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->validateFields()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$500(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    .line 452
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 448
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 444
    return-void
.end method
