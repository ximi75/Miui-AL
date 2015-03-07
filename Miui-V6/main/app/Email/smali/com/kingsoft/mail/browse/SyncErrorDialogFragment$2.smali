.class Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$2;
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
    .line 49
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$2;->this$0:Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    return-void
.end method
