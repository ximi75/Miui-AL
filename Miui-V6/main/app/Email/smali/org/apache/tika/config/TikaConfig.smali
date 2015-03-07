.class public Lorg/apache/tika/config/TikaConfig;
.super Ljava/lang/Object;
.source "TikaConfig.java"


# instance fields
.field private final mimeTypes:Lorg/apache/tika/mime/MimeTypes;

.field private final parser:Lorg/apache/tika/parser/CompositeParser;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lorg/apache/tika/parser/DefaultParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/DefaultParser;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/apache/tika/parser/CompositeParser;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Document;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Document;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "delegate"    # Lorg/apache/tika/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/apache/tika/config/TikaConfig;-><init>(Ljava/io/InputStream;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lorg/apache/tika/parser/DefaultParser;

    invoke-direct {v0, p1}, Lorg/apache/tika/parser/DefaultParser;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/apache/tika/parser/CompositeParser;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Ljava/io/File;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Document;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Lorg/apache/tika/parser/CompositeParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/apache/tika/parser/CompositeParser;

    .prologue
    .line 65
    invoke-static {}, Lorg/apache/tika/mime/MimeTypes;->getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/apache/tika/parser/CompositeParser;Lorg/apache/tika/mime/MimeTypes;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lorg/apache/tika/parser/CompositeParser;Lorg/apache/tika/mime/MimeTypes;)V
    .locals 0
    .param p1, "parser"    # Lorg/apache/tika/parser/CompositeParser;
    .param p2, "mimeTypes"    # Lorg/apache/tika/mime/MimeTypes;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/tika/config/TikaConfig;->parser:Lorg/apache/tika/parser/CompositeParser;

    .line 61
    iput-object p2, p0, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Element;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "delegate"    # Lorg/apache/tika/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Document;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 20
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string/jumbo v17, "mimeTypeRepository"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/tika/config/TikaConfig;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 112
    .local v8, "mtr":Lorg/w3c/dom/Element;
    if-eqz v8, :cond_0

    const-string/jumbo v17, "resource"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 113
    const-string/jumbo v17, "resource"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/tika/mime/MimeTypesFactory;->create(Ljava/lang/String;)Lorg/apache/tika/mime/MimeTypes;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 118
    :goto_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v14, "parsers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/parser/Parser;>;"
    const-string/jumbo v17, "parser"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 120
    .local v11, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_1

    .line 162
    new-instance v17, Lorg/apache/tika/parser/CompositeParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/tika/config/TikaConfig;->parser:Lorg/apache/tika/parser/CompositeParser;

    .line 163
    return-void

    .line 115
    .end local v3    # "i":I
    .end local v11    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v14    # "parsers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/parser/Parser;>;"
    :cond_0
    invoke-static {}, Lorg/apache/tika/mime/MimeTypes;->getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    goto :goto_0

    .line 121
    .restart local v3    # "i":I
    .restart local v11    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v14    # "parsers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/parser/Parser;>;"
    :cond_1
    invoke-interface {v11, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 122
    .local v10, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v17, "class"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 126
    .local v13, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "instance":Ljava/lang/Object;
    instance-of v0, v4, Lorg/apache/tika/parser/Parser;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 128
    new-instance v17, Lorg/apache/tika/exception/TikaException;

    .line 129
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Configured class is not a Tika Parser: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 128
    invoke-direct/range {v17 .. v18}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v13    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v17, Lorg/apache/tika/exception/TikaException;

    .line 152
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Configured parser class not found: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 151
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 131
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v13    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    move-object v0, v4

    check-cast v0, Lorg/apache/tika/parser/Parser;

    move-object v12, v0

    .line 133
    .local v12, "parser":Lorg/apache/tika/parser/Parser;
    const-string/jumbo v17, "mime"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 134
    .local v7, "mimes":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_3

    .line 135
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v16, "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_4

    .line 146
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lorg/apache/tika/parser/ParserDecorator;->withTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;

    move-result-object v12

    .line 149
    .end local v5    # "j":I
    .end local v16    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    :cond_3
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 137
    .restart local v5    # "j":I
    .restart local v16    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    :cond_4
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/tika/config/TikaConfig;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "mime":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v15

    .line 139
    .local v15, "type":Lorg/apache/tika/mime/MediaType;
    if-eqz v15, :cond_5

    .line 140
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 142
    :cond_5
    new-instance v17, Lorg/apache/tika/exception/TikaException;

    .line 143
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Invalid media type name: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 142
    invoke-direct/range {v17 .. v18}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 153
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "j":I
    .end local v6    # "mime":Ljava/lang/String;
    .end local v7    # "mimes":Lorg/w3c/dom/NodeList;
    .end local v12    # "parser":Lorg/apache/tika/parser/Parser;
    .end local v13    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "type":Lorg/apache/tika/mime/MediaType;
    .end local v16    # "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v17, Lorg/apache/tika/exception/TikaException;

    .line 155
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unable to access a parser class: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 154
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 156
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v17, Lorg/apache/tika/exception/TikaException;

    .line 158
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Unable to instantiate a parser class: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 157
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "delegate"    # Lorg/apache/tika/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/apache/tika/config/TikaConfig;-><init>(Lorg/w3c/dom/Element;)V

    .line 202
    return-void
.end method

.method private static getBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v2, "XML parser not available"

    invoke-direct {v1, v2, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 288
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .end local v0    # "child":Lorg/w3c/dom/Node;
    :goto_1
    return-object v0

    .line 289
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 290
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1

    .line 293
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultConfig()Lorg/apache/tika/config/TikaConfig;
    .locals 3

    .prologue
    .line 259
    :try_start_0
    new-instance v1, Lorg/apache/tika/config/TikaConfig;

    invoke-direct {v1}, Lorg/apache/tika/config/TikaConfig;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 262
    const-string/jumbo v2, "Unable to read default configuration"

    .line 261
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Lorg/apache/tika/exception/TikaException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 265
    const-string/jumbo v2, "Unable to access default configuration"

    .line 264
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefaultConfig(Lorg/apache/tika/parser/Parser;)Lorg/apache/tika/config/TikaConfig;
    .locals 1
    .param p0, "delegate"    # Lorg/apache/tika/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    return-object v0
.end method

.method private getText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 205
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 206
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 215
    :goto_0
    return-object v3

    .line 207
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 210
    .local v2, "list":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tika/config/TikaConfig;->getText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "list":Lorg/w3c/dom/NodeList;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method


# virtual methods
.method public getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getMimeRepository()Lorg/apache/tika/mime/MimeTypes;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    return-object v0
.end method

.method public getParser()Lorg/apache/tika/parser/Parser;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig;->parser:Lorg/apache/tika/parser/CompositeParser;

    return-object v0
.end method

.method public getParser(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/parser/Parser;
    .locals 1
    .param p1, "mimeType"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig;->parser:Lorg/apache/tika/parser/CompositeParser;

    invoke-virtual {v0}, Lorg/apache/tika/parser/CompositeParser;->getParsers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/parser/Parser;

    return-object v0
.end method

.method public getParsers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig;->parser:Lorg/apache/tika/parser/CompositeParser;

    invoke-virtual {v0}, Lorg/apache/tika/parser/CompositeParser;->getParsers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
