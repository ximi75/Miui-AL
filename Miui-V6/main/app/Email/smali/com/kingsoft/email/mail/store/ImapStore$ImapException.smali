.class Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
.super Lcom/kingsoft/emailcommon/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mAlertText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "alertText"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 753
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "alertText"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 747
    invoke-direct {p0, p1, p3}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 749
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertText"    # Ljava/lang/String;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 762
    return-void
.end method
