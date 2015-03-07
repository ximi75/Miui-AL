.class public Lcom/kingsoft/email/data/CrowdSourcingFromXml;
.super Ljava/lang/Object;
.source "CrowdSourcingFromXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/data/CrowdSourcingFromXml$1;,
        Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrowdSourcingFromXml"

.field private static mCsfx:Lcom/kingsoft/email/data/CrowdSourcingFromXml;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kingsoft/email/data/CrowdSourcingFromXml;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mCsfx:Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mCsfx:Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/data/CrowdSourcingFromXml;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mCsfx:Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mCsfx:Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public parse()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/provider/CrowdSourcingObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 53
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    iget-object v7, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f080000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 55
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 56
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 57
    .local v5, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;-><init>(Lcom/kingsoft/email/data/CrowdSourcingFromXml;Lcom/kingsoft/email/data/CrowdSourcingFromXml$1;)V

    .line 58
    .local v3, "myHandler":Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
    invoke-interface {v5, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 60
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 62
    invoke-virtual {v3}, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->getMap()Ljava/util/HashMap;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 75
    if-eqz v2, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .end local v3    # "myHandler":Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "xmlReader":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return-object v6

    .line 78
    .restart local v3    # "myHandler":Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v5    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "myHandler":Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    const-string/jumbo v7, "CrowdSourcingFromXml"

    const-string/jumbo v8, "Failed to parse xml due to ParserConfigurationException"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v2, :cond_0

    .line 76
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 67
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    const-string/jumbo v7, "CrowdSourcingFromXml"

    const-string/jumbo v8, "Failed to parse xml due to SAXException"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    if-eqz v2, :cond_0

    .line 76
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 78
    :catch_4
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v7, "CrowdSourcingFromXml"

    const-string/jumbo v8, "Failed to parse xml due to IOException"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 75
    if-eqz v2, :cond_0

    .line 76
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 78
    :catch_6
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 75
    if-eqz v2, :cond_1

    .line 76
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 80
    :cond_1
    :goto_1
    throw v6

    .line 78
    :catch_7
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
