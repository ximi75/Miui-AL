.class public Lcom/kingsoft/email/mail/transport/DiscourseLogger;
.super Ljava/lang/Object;
.source "DiscourseLogger.java"


# instance fields
.field private mBuffer:[Ljava/lang/String;

.field private final mBufferSize:I

.field private mPos:I

.field private final mReceivingLine:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    .line 37
    iput p1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBufferSize:I

    .line 38
    invoke-direct {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->initBuffer()V

    .line 39
    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    aput-object p1, v0, v1

    .line 48
    iget v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    .line 49
    iget v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    iget v1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBufferSize:I

    if-lt v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    .line 52
    :cond_0
    return-void
.end method

.method private addReceivingLineToBuffer()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBufferSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public addReceivedByte(I)V
    .locals 5
    .param p1, "b"    # I

    .prologue
    .line 66
    const/16 v1, 0x20

    if-gt v1, p1, :cond_1

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    goto :goto_0

    .line 70
    :cond_2
    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "hex":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mReceivingLine:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public addSentCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addLine(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method getLines()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addReceivingLineToBuffer()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    .line 89
    .local v4, "start":I
    iget v1, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mPos:I

    .line 91
    .local v1, "pos":I
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBuffer:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 92
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->mBufferSize:I

    rem-int v1, v5, v6

    .line 96
    if-ne v1, v4, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 99
    .local v2, "ret":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    return-object v2
.end method

.method public logLastDiscourse()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "lines":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v5, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Last network activities:"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->getLines()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 115
    .local v4, "r":Ljava/lang/String;
    sget-object v5, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "r":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->initBuffer()V

    goto :goto_0
.end method
