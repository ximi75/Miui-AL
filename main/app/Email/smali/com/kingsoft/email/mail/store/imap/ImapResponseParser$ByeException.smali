.class public Lcom/kingsoft/email/mail/store/imap/ImapResponseParser$ByeException;
.super Ljava/io/IOException;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByeException"
.end annotation


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "Received BYE"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "Received BYE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    return-void
.end method
