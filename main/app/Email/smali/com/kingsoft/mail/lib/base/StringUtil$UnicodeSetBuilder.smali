.class Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/lib/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetBuilder"
.end annotation


# instance fields
.field codePointSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/lib/base/StringUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/lib/base/StringUtil$1;

    .prologue
    .line 3134
    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3139
    return-object p0
.end method

.method addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 3143
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 3144
    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3146
    :cond_0
    return-object p0
.end method

.method create()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->codePointSet:Ljava/util/Set;

    return-object v0
.end method
