.class public Lcom/kingsoft/mail/browse/EmailAddressSpan;
.super Landroid/text/style/URLSpan;
.source "EmailAddressSpan.java"


# instance fields
.field private final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmailAddressSpan;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 35
    iput-object p2, p0, Lcom/kingsoft/mail/browse/EmailAddressSpan;->mEmailAddress:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmailAddressSpan;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/EmailAddressSpan;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->composeToAddress(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 48
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 50
    return-void
.end method
