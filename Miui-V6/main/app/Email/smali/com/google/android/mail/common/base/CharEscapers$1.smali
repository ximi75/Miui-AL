.class final Lcom/google/android/mail/common/base/CharEscapers$1;
.super Lcom/google/android/mail/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/mail/common/base/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/google/android/mail/common/base/CharEscapers$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/mail/common/base/CharEscapers$1$1;-><init>(Lcom/google/android/mail/common/base/CharEscapers$1;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object p1
.end method

.method protected escape(C)[C
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
