.class Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$1;
.super Ljava/lang/Object;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    # getter for: Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mDialog:Lmiui/app/AlertDialog;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->access$000(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)Lmiui/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    return-void
.end method
