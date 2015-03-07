.class public Lcom/kingsoft/exchange/adapter/Parser$EodException;
.super Ljava/io/IOException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EodException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/adapter/Parser;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser$EodException;->this$0:Lcom/kingsoft/exchange/adapter/Parser;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method
