.class Lcom/google/android/mail/common/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/google/android/mail/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallThroughCharEscaper"
.end annotation


# instance fields
.field private final primary:Lcom/google/android/mail/common/base/CharEscaper;

.field private final secondary:Lcom/google/android/mail/common/base/CharEscaper;


# direct methods
.method public constructor <init>(Lcom/google/android/mail/common/base/CharEscaper;Lcom/google/android/mail/common/base/CharEscaper;)V
    .locals 0
    .param p1, "primary"    # Lcom/google/android/mail/common/base/CharEscaper;
    .param p2, "secondary"    # Lcom/google/android/mail/common/base/CharEscaper;

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/google/android/mail/common/base/CharEscaper;-><init>()V

    .line 1087
    iput-object p1, p0, Lcom/google/android/mail/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/android/mail/common/base/CharEscaper;

    .line 1088
    iput-object p2, p0, Lcom/google/android/mail/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/android/mail/common/base/CharEscaper;

    .line 1089
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/google/android/mail/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/android/mail/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1094
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/google/android/mail/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/android/mail/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1097
    :cond_0
    return-object v0
.end method
