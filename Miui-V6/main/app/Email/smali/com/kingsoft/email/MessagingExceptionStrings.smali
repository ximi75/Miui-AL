.class public Lcom/kingsoft/email/MessagingExceptionStrings;
.super Ljava/lang/Object;
.source "MessagingExceptionStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/kingsoft/email/MessagingExceptionStrings;->getErrorStringResourceId(Lcom/kingsoft/emailcommon/mail/MessagingException;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorStringResourceId(Lcom/kingsoft/emailcommon/mail/MessagingException;)I
    .locals 2
    .param p0, "e"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    const v0, 0x7f100072

    .line 36
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 56
    const v0, 0x7f100394

    :goto_0
    :sswitch_0
    return v0

    .line 38
    :sswitch_1
    const v0, 0x7f100070

    goto :goto_0

    .line 40
    :sswitch_2
    const v0, 0x7f1000ee

    goto :goto_0

    .line 42
    :sswitch_3
    const v0, 0x7f100074

    goto :goto_0

    .line 44
    :sswitch_4
    const v0, 0x7f100064

    goto :goto_0

    .line 52
    :sswitch_5
    const v0, 0x7f100063

    goto :goto_0

    .line 54
    :sswitch_6
    const v0, 0x7f100065

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0xe -> :sswitch_5
        0xf -> :sswitch_2
        0x11 -> :sswitch_6
        0x21 -> :sswitch_1
    .end sparse-switch
.end method
