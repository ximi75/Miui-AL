.class Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CrowdSourcingFromXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/data/CrowdSourcingFromXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAXHandler"
.end annotation


# static fields
.field private static final CROWD_DATA:Ljava/lang/String; = "crowddata"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DATA_TYPE:Ljava/lang/String; = "data_type"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mContent:Ljava/lang/String;

.field mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/provider/CrowdSourcingObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/email/data/CrowdSourcingFromXml;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/data/CrowdSourcingFromXml;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->this$0:Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/data/CrowdSourcingFromXml;Lcom/kingsoft/email/data/CrowdSourcingFromXml$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/data/CrowdSourcingFromXml;
    .param p2, "x1"    # Lcom/kingsoft/email/data/CrowdSourcingFromXml$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;-><init>(Lcom/kingsoft/email/data/CrowdSourcingFromXml;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 135
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mContent:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string/jumbo v2, "type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mContent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, "type":I
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->setSourceTypeId(I)V

    goto :goto_0

    .line 119
    .end local v1    # "type":I
    :cond_2
    const-string/jumbo v2, "data"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    iget-object v3, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->setData1(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string/jumbo v2, "data_type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    iget-object v3, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->setData2(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string/jumbo v2, "crowddata"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    invoke-virtual {v2}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getData1()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 104
    const-string/jumbo v0, "crowddata"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/kingsoft/email/provider/CrowdSourcingObject;

    invoke-direct {v0}, Lcom/kingsoft/email/provider/CrowdSourcingObject;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/data/CrowdSourcingFromXml$SAXHandler;->mCso:Lcom/kingsoft/email/provider/CrowdSourcingObject;

    .line 107
    :cond_0
    return-void
.end method
