.class Lcom/kingsoft/mail/compose/ComposeActivity$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 887
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 891
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$000(Lcom/kingsoft/mail/compose/ComposeActivity;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->changeComposeAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 894
    return-void
.end method
