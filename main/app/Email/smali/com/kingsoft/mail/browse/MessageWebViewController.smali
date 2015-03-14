.class public Lcom/kingsoft/mail/browse/MessageWebViewController;
.super Ljava/lang/Object;
.source "MessageWebViewController.java"


# static fields
.field private static templateString:Ljava/lang/String;


# instance fields
.field adMail:Z

.field contentWidth:I

.field pageWidth:I

.field scale:F

.field showImage:Z

.field tableFix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageWebViewController;->templateString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x168

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->adMail:Z

    .line 12
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->tableFix:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->showImage:Z

    .line 14
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    .line 15
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    .line 16
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    .line 21
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "contentWidth"    # I
    .param p3, "pageWidth"    # I

    .prologue
    const/16 v1, 0x168

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->adMail:Z

    .line 12
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->tableFix:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->showImage:Z

    .line 14
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    .line 15
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    .line 16
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    .line 34
    iput p1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    .line 35
    iput p2, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    .line 36
    iput p3, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    .line 37
    return-void
.end method

.method public constructor <init>(FIIZZZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "contentWidth"    # I
    .param p3, "pageWidth"    # I
    .param p4, "showimage"    # Z
    .param p5, "admail"    # Z
    .param p6, "tableFix"    # Z

    .prologue
    const/16 v1, 0x168

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->adMail:Z

    .line 12
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->tableFix:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->showImage:Z

    .line 14
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    .line 15
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    .line 16
    iput v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    .line 25
    iput-boolean p5, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->adMail:Z

    .line 26
    iput-boolean p6, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->tableFix:Z

    .line 27
    iput-boolean p4, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->showImage:Z

    .line 28
    iput p1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    .line 29
    iput p2, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    .line 30
    iput p3, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    .line 31
    return-void
.end method

.method private getHtmlTemplate(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v7, Lcom/kingsoft/mail/browse/MessageWebViewController;->templateString:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/kingsoft/mail/browse/MessageWebViewController;->templateString:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 48
    sget-object v6, Lcom/kingsoft/mail/browse/MessageWebViewController;->templateString:Ljava/lang/String;

    .line 73
    :goto_0
    return-object v6

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string/jumbo v8, "ksMailTemplate.html"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 54
    .local v5, "localInputStream":Ljava/io/InputStream;
    const/16 v7, 0x2800

    new-array v0, v7, [B

    .line 55
    .local v0, "arrayOfByte":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v3, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 57
    .local v2, "i":I
    if-lez v2, :cond_1

    .line 58
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 59
    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "templateStr":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/browse/MessageWebViewController;->ReplacePrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 72
    sput-object v6, Lcom/kingsoft/mail/browse/MessageWebViewController;->templateString:Ljava/lang/String;

    goto :goto_0

    .line 61
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "i":I
    .end local v3    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "localInputStream":Ljava/io/InputStream;
    .end local v6    # "templateStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 62
    .local v4, "localException":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    goto :goto_0

    .line 68
    .end local v4    # "localException":Ljava/lang/Exception;
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "i":I
    .restart local v3    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "localInputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, ""

    .line 70
    .restart local v6    # "templateStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contentStr"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "replacement"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string/jumbo p1, ""

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ReplacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "complateHtmlStr"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "contentWidth"

    iget v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->contentWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string/jumbo v0, "pageWidth"

    iget v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->pageWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string/jumbo v1, "showimage"

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->showImage:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string/jumbo v1, "admail"

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->adMail:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string/jumbo v1, "tableFix"

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->tableFix:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_2
    invoke-direct {p0, p1, v1, v0}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string/jumbo v0, "scale"

    iget v1, p0, Lcom/kingsoft/mail/browse/MessageWebViewController;->scale:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    return-object p1

    .line 79
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 80
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1

    .line 81
    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_2
.end method

.method public getHtmlContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "htmlBody"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/browse/MessageWebViewController;->getHtmlTemplate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "complateHtmlStr":Ljava/lang/String;
    const-string/jumbo v1, "(?i)<table([> ])"

    const-string/jumbo v2, "<div class=\'kmTableArea\'>$0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "(?i)<\\/table>"

    const-string/jumbo v3, "</table></div>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    const-string/jumbo v1, "content"

    invoke-direct {p0, v0, v1, p1}, Lcom/kingsoft/mail/browse/MessageWebViewController;->replaceHtmlMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "(?i)<div class=\"netease-attDown\"([> ])"

    const-string/jumbo v2, "<div style=\"display:none;\">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method
