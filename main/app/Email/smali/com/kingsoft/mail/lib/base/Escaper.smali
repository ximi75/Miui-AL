.class public abstract Lcom/kingsoft/mail/lib/base/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lcom/kingsoft/mail/lib/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/lib/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/kingsoft/mail/lib/base/Escaper$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/lib/base/Escaper$1;-><init>(Lcom/kingsoft/mail/lib/base/Escaper;)V

    iput-object v0, p0, Lcom/kingsoft/mail/lib/base/Escaper;->asFunction:Lcom/kingsoft/mail/lib/base/Function;

    return-void
.end method


# virtual methods
.method public asFunction()Lcom/kingsoft/mail/lib/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingsoft/mail/lib/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/Escaper;->asFunction:Lcom/kingsoft/mail/lib/base/Function;

    return-object v0
.end method

.method public abstract escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end method

.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
