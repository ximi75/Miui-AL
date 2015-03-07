.class public Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;
.super Ljava/lang/Object;
.source "ParaSpanRemoverInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 14
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 15
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    .local v2, "sp":Landroid/text/SpannableString;
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v2, p2, p3, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 17
    .local v1, "paraSpans":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 18
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "paraSpans":[Ljava/lang/Object;
    .end local v2    # "sp":Landroid/text/SpannableString;
    :cond_0
    move-object v2, p1

    .line 24
    :cond_1
    return-object v2
.end method
