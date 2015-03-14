.class public Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;
.super Lcom/kingsoft/exchange/adapter/Parser$EofException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyStreamException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/adapter/Parser;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;->this$0:Lcom/kingsoft/exchange/adapter/Parser;

    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser$EofException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    return-void
.end method
