.class public Lcom/kingsoft/mail/ui/HtmlConversationTemplates;
.super Ljava/lang/Object;
.source "HtmlConversationTemplates.java"


# static fields
.field private static final BUFFER_SIZE_CHARS:I = 0x10000

.field private static final IMG_URL_REPLACEMENT:Ljava/lang/String; = "$1src=\'data:\' blocked-src$2"

.field public static final MESSAGE_PREFIX:Ljava/lang/String; = "m"

.field public static final MESSAGE_PREFIX_LENGTH:I

.field private static final TAG:Ljava/lang/String;

.field private static final sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

.field private static sBorder:Ljava/lang/String;

.field private static sConversationLower:Ljava/lang/String;

.field private static sConversationUpper:Ljava/lang/String;

.field private static sLoadedTemplates:Z

.field private static sMessage:Ljava/lang/String;

.field private static sSuperCollapsed:Ljava/lang/String;


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private mInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "m"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->MESSAGE_PREFIX_LENGTH:I

    .line 54
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->TAG:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "(<\\s*img\\s+(?:[^>]*\\s+)?)src(\\s*=[\\s\'\"]*http)"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 101
    iput-object p1, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    .line 105
    sget-boolean v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sLoadedTemplates:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sLoadedTemplates:Z

    .line 107
    const v0, 0x7f080005

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    .line 108
    const v0, 0x7f080001

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sBorder:Ljava/lang/String;

    .line 109
    const v0, 0x7f080004

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    .line 110
    const v0, 0x7f080003

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    .line 111
    const v0, 0x7f080002

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method

.method private varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 255
    return-void
.end method

.method private readTemplate(I)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 231
    .local v3, "in":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .local v4, "in":Ljava/io/InputStreamReader;
    const/16 v6, 0x1000

    :try_start_1
    new-array v0, v6, [C

    .line 236
    .local v0, "buf":[C
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, "chars":I
    if-lez v1, :cond_1

    .line 237
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    .end local v0    # "buf":[C
    .end local v1    # "chars":I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :goto_1
    if-eqz v3, :cond_0

    .line 244
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_0
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open template id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v0    # "buf":[C
    .restart local v1    # "chars":I
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 243
    if-eqz v4, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-object v6

    .line 247
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 243
    .end local v0    # "buf":[C
    .end local v1    # "chars":I
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method static replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1src=\'data:\' blocked-src$2"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendBorder(I)V
    .locals 4
    .param p1, "blockHeight"    # I

    .prologue
    .line 128
    sget-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sBorder:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public appendMessageHtml(Lcom/kingsoft/mail/ui/HtmlMessage;ZZII)V
    .locals 8
    .param p1, "message"    # Lcom/kingsoft/mail/ui/HtmlMessage;
    .param p2, "isExpanded"    # Z
    .param p3, "safeForImages"    # Z
    .param p4, "headerHeight"    # I
    .param p5, "footerHeight"    # I

    .prologue
    .line 139
    if-eqz p2, :cond_1

    const-string/jumbo v1, "block"

    .line 140
    .local v1, "bodyDisplay":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    const-string/jumbo v2, "expanded"

    .line 141
    .local v2, "expandedClass":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_3

    const-string/jumbo v3, "mail-show-images"

    .line 143
    .local v3, "showImagesClass":Ljava/lang/String;
    :goto_2
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/HtmlMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "body":Ljava/lang/String;
    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/kingsoft/mail/ui/HtmlMessage;->embedsExternalResources()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-static {v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    sget-object v4, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v1, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    const/4 v6, 0x6

    aput-object v1, v5, v6

    const/4 v6, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void

    .line 139
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "bodyDisplay":Ljava/lang/String;
    .end local v2    # "expandedClass":Ljava/lang/String;
    .end local v3    # "showImagesClass":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "none"

    goto :goto_0

    .line 140
    .restart local v1    # "bodyDisplay":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1

    .line 141
    .restart local v2    # "expandedClass":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_2
.end method

.method public appendSuperCollapsedHtml(II)V
    .locals 4
    .param p1, "firstCollapsed"    # I
    .param p2, "blockHeight"    # I

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public emit()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v1, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "out":Ljava/lang/String;
    iput-object v2, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 217
    iput-object v2, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 218
    return-object v0
.end method

.method public endConversation(Ljava/lang/String;Ljava/lang/String;IZZZZ)Ljava/lang/String;
    .locals 8
    .param p1, "docBaseUri"    # Ljava/lang/String;
    .param p2, "conversationBaseUri"    # Ljava/lang/String;
    .param p3, "viewportWidth"    # I
    .param p4, "enableContentReadySignal"    # Z
    .param p5, "normalizeMessageWidths"    # Z
    .param p6, "enableMungeTables"    # Z
    .param p7, "enableMungeImages"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "must call startConversation first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "initial-load"

    .line 200
    .local v0, "contentReadyClass":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    iget-object v3, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    const v4, 0x7f1001f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    const v4, 0x7f100380

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 207
    sget-object v1, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rendered conversation of %d bytes, buffer capacity=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "contentReadyClass":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Lcom/kingsoft/mail/ui/HtmlMessage;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingsoft/mail/ui/HtmlMessage;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 223
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 224
    return-void
.end method

.method public startConversation(II)V
    .locals 6
    .param p1, "sideMargin"    # I
    .param p2, "conversationHeaderHeight"    # I

    .prologue
    const/4 v5, 0x1

    .line 180
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "must call startConversation first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->reset()V

    .line 185
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->isRunningKitkatOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "img[blocked-src] { border: 1px solid #CCCCCC; }"

    .line 187
    .local v0, "border":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 189
    return-void

    .line 185
    .end local v0    # "border":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
