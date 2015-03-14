.class public Lcom/kingsoft/email/EmailAddressValidator;
.super Ljava/lang/Object;
.source "EmailAddressValidator.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "invalidText"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
