.class Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;
.super Ljava/lang/Object;
.source "TurnAutoSyncOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$syncAuthority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 92
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->sDefaultSyncAuthority:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->val$account:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 99
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    # getter for: Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    # getter for: Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;->onEnableAutoSync()V

    .line 103
    :cond_0
    return-void

    .line 92
    .end local v0    # "authority":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$2;->val$syncAuthority:Ljava/lang/String;

    goto :goto_0
.end method
