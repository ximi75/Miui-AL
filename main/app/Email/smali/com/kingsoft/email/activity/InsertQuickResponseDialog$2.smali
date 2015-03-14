.class Lcom/kingsoft/email/activity/InsertQuickResponseDialog$2;
.super Ljava/lang/Object;
.source "InsertQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$2;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 127
    return-void
.end method
