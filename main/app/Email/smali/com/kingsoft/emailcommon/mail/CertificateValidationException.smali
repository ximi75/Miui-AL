.class public Lcom/kingsoft/emailcommon/mail/CertificateValidationException;
.super Lcom/kingsoft/emailcommon/mail/MessagingException;
.source "CertificateValidationException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
