.class public abstract Lcom/google/android/mail/common/base/Escaper;
.super Ljava/lang/Object;
.source "Escaper.java"


# instance fields
.field private final asFunction:Lcom/google/android/mail/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/mail/common/base/Function",
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/mail/common/base/Escaper$1;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/Escaper$1;-><init>(Lcom/google/android/mail/common/base/Escaper;)V

    iput-object v0, p0, Lcom/google/android/mail/common/base/Escaper;->asFunction:Lcom/google/android/mail/common/base/Function;

    return-void
.end method


# virtual methods
.method public asFunction()Lcom/google/android/mail/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/mail/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/mail/common/base/Escaper;->asFunction:Lcom/google/android/mail/common/base/Function;

    return-object v0
.end method

.method public abstract escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end method

.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
