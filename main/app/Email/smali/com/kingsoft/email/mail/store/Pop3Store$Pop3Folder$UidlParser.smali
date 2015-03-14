.class Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidlParser"
.end annotation


# instance fields
.field public mEndOfMessage:Z

.field public mErr:Z

.field public mMessageNumber:I

.field public mUniqueId:Ljava/lang/String;

.field final synthetic this$1:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->this$1:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 499
    return-void
.end method


# virtual methods
.method public parseMultiLine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 542
    iput-boolean v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 543
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 563
    :goto_0
    return v3

    .line 546
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 547
    .local v0, "first":C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_2

    .line 548
    iput-boolean v3, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 551
    :cond_2
    const-string/jumbo v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "uidParts":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 554
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 559
    iput-boolean v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .local v1, "nfe":Ljava/lang/NumberFormatException;
    move v3, v4

    .line 556
    goto :goto_0

    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v4

    .line 563
    goto :goto_0
.end method

.method public parseSingleLine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 510
    iput-boolean v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 511
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 531
    :goto_0
    return v3

    .line 514
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 515
    .local v0, "first":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 516
    const-string/jumbo v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "uidParts":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 519
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v4, 0x2

    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 524
    iput-boolean v3, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .local v1, "nfe":Ljava/lang/NumberFormatException;
    move v3, v4

    .line 521
    goto :goto_0

    .line 527
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "uidParts":[Ljava/lang/String;
    :cond_2
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    .line 528
    iput-boolean v3, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    goto :goto_0

    :cond_3
    move v3, v4

    .line 531
    goto :goto_0
.end method
