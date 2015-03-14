.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    iput p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;->mLevel:I

    .line 1133
    return-void
.end method

.method static synthetic access$1100(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;

    .prologue
    .line 1128
    iget v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;->mLevel:I

    return v0
.end method
