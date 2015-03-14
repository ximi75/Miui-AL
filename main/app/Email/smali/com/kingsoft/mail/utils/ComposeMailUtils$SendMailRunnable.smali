.class Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;
.super Ljava/lang/Object;
.source "ComposeMailUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/ComposeMailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendMailRunnable"
.end annotation


# instance fields
.field private account:Lcom/kingsoft/mail/providers/Account;

.field private context:Landroid/content/Context;

.field private fromVip:Z

.field private handler:Landroid/os/Handler;

.field private mCv:Landroid/content/ContentValues;

.field private msg:Lcom/kingsoft/mail/providers/Message;

.field private replyEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/widget/EditText;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fromVip"    # Z
    .param p3, "replyEdit"    # Landroid/widget/EditText;
    .param p4, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p5, "msg"    # Lcom/kingsoft/mail/providers/Message;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    .line 476
    iput-boolean p2, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->fromVip:Z

    .line 477
    iput-object p3, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->replyEdit:Landroid/widget/EditText;

    .line 478
    iput-object p4, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->account:Lcom/kingsoft/mail/providers/Account;

    .line 479
    iput-object p5, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->msg:Lcom/kingsoft/mail/providers/Message;

    .line 480
    iput-object p6, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->handler:Landroid/os/Handler;

    .line 481
    invoke-direct {p0}, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->generateValues()V

    .line 482
    return-void
.end method

.method private generateValues()V
    .locals 9

    .prologue
    .line 485
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 487
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->replyEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 488
    iget-boolean v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->fromVip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 489
    iget-object v7, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    .line 490
    .local v7, "a":Landroid/app/Activity;
    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    .line 492
    .end local v7    # "a":Landroid/app/Activity;
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->replyEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 494
    .local v3, "replyText":Landroid/text/Editable;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v4, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v5, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->mCv:Landroid/content/ContentValues;

    .line 497
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->msg:Lcom/kingsoft/mail/providers/Message;

    iget-object v6, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->mCv:Landroid/content/ContentValues;

    # invokes: Lcom/kingsoft/mail/utils/ComposeMailUtils;->createMessageValues(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/text/Editable;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)V
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->access$000(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/text/Editable;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 498
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->replyEdit:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    const v2, 0x7f100375

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 507
    iget-boolean v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->fromVip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "B03"

    const-string/jumbo v2, "A26"

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->account:Lcom/kingsoft/mail/providers/Account;

    const-string/jumbo v2, "send_message"

    iget-object v3, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->mCv:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->callAccountSendSaveMethod(Landroid/content/ContentResolver;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/os/Bundle;

    .line 518
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "B03"

    const-string/jumbo v2, "A13"

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
