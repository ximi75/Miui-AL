.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Span"
.end annotation


# instance fields
.field public mEnd:I

.field public mSpan:Ljava/lang/Object;

.field public mSpanFlags:I

.field public mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mSpan:Ljava/lang/Object;

    .line 1143
    iput p2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mStart:I

    .line 1144
    iput p3, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mEnd:I

    .line 1145
    iput p4, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mSpanFlags:I

    .line 1146
    return-void
.end method
