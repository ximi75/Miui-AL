.class final Lcom/kingsoft/email/mail/store/imap/ImapList$1;
.super Lcom/kingsoft/email/mail/store/imap/ImapList;
.source "ImapList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/imap/ImapList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapList;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V
    .locals 1
    .param p1, "e"    # Lcom/kingsoft/email/mail/store/imap/ImapElement;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
