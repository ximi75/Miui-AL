.class Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;
.super Ljava/lang/Object;
.source "MailActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NdefMessageMaker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/MailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/MailActivity$1;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;-><init>()V

    return-void
.end method

.method private static getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 9
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    .local v0, "accountBytes":[B
    :goto_0
    const/4 v3, 0x6

    .line 103
    .local v3, "prefix":B
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 104
    .local v4, "recordBytes":[B
    aput-byte v3, v4, v7

    .line 105
    array-length v5, v0

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v6, v7, [B

    invoke-direct {v2, v8, v5, v6, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 108
    .local v2, "mailto":Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v2, v6, v7

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v5

    .line 99
    .end local v0    # "accountBytes":[B
    .end local v2    # "mailto":Landroid/nfc/NdefRecord;
    .end local v3    # "prefix":B
    .end local v4    # "recordBytes":[B
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "accountBytes":[B
    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 85
    sget-object v0, Lcom/kingsoft/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActivity$NdefMessageMaker;->getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v0

    goto :goto_0
.end method
