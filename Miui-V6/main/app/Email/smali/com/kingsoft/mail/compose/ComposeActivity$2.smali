.class Lcom/kingsoft/mail/compose/ComposeActivity$2;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->obtainAccount(Landroid/content/Intent;)Lcom/kingsoft/mail/providers/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$2;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 901
    packed-switch p2, :pswitch_data_0

    .line 906
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 903
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$2;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    .line 904
    const/4 v0, 0x1

    goto :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
