.class Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;
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


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    # getter for: Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$1;->this$0:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;

    # getter for: Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->mListener:Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;->access$000(Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog;)Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/TurnAutoSyncOnDialog$TurnAutoSyncOnDialogListener;->onCancelAutoSync()V

    .line 111
    :cond_0
    return-void
.end method
