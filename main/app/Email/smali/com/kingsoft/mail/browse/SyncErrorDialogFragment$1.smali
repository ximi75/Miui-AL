.class Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "SyncErrorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$1;->this$0:Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$1;->this$0:Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    return-void
.end method
