.class Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;
.super Ljava/lang/Object;
.source "SpanHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/span/SpanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanComparatorByStartDsc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mSpanned:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 0
    .param p1, "spanned"    # Landroid/text/Spanned;

    .prologue
    .line 67
    .local p0, "this":Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;, "Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;->mSpanned:Landroid/text/Spanned;

    .line 69
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;, "Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v5, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 74
    .local v2, "lStart":I
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v5, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 75
    .local v4, "rStart":I
    sub-int v0, v4, v2

    .line 76
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 81
    .end local v0    # "diff":I
    :goto_0
    return v0

    .line 79
    .restart local v0    # "diff":I
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v5, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 80
    .local v1, "lEnd":I
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v5, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 81
    .local v3, "rEnd":I
    sub-int v0, v3, v1

    goto :goto_0
.end method
