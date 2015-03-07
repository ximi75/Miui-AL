.class Lcom/kingsoft/mail/MinTimeProgressDialog$1;
.super Ljava/lang/Object;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/MinTimeProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/MinTimeProgressDialog;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingsoft/mail/MinTimeProgressDialog$1;->this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog$1;->this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->access$001(Lcom/kingsoft/mail/MinTimeProgressDialog;)V

    .line 50
    return-void
.end method
