.class Lcom/kingsoft/mail/MinTimeProgressDialog$2;
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
    .line 53
    iput-object p1, p0, Lcom/kingsoft/mail/MinTimeProgressDialog$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;

    # getter for: Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z
    invoke-static {v0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->access$100(Lcom/kingsoft/mail/MinTimeProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressDialog;

    # invokes: Landroid/app/Dialog;->show()V
    invoke-static {v0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->access$201(Lcom/kingsoft/mail/MinTimeProgressDialog;)V

    .line 59
    :cond_0
    return-void
.end method
