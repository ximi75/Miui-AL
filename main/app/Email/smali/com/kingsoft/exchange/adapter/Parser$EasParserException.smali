.class public Lcom/kingsoft/exchange/adapter/Parser$EasParserException;
.super Ljava/io/IOException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasParserException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/adapter/Parser;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;->this$0:Lcom/kingsoft/exchange/adapter/Parser;

    .line 142
    const-string/jumbo v0, "WBXML format error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;Ljava/lang/String;)V
    .locals 0
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;->this$0:Lcom/kingsoft/exchange/adapter/Parser;

    .line 146
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    return-void
.end method
