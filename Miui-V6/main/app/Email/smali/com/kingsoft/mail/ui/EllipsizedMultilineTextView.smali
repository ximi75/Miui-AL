.class public Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;
.super Landroid/widget/TextView;
.source "EllipsizedMultilineTextView.java"


# static fields
.field public static final ALL_AVAILABLE:I = -0x1


# instance fields
.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxlines"    # I

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50
    iput p1, p0, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->mMaxLines:I

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "avail"    # I

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 117
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 67
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 75
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v7, v3, v4

    .line 77
    .local v7, "w":I
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2    # "layout":Landroid/text/Layout;
    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 82
    .end local v7    # "w":I
    .restart local v2    # "layout":Landroid/text/Layout;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->mMaxLines:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 83
    .local v17, "lastLineStart":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move/from16 v0, p2

    int-to-float v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 87
    .local v18, "remainder":Ljava/lang/CharSequence;
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 89
    .local v12, "builder":Landroid/text/SpannableStringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 91
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_5

    move-object/from16 v19, p1

    .line 101
    check-cast v19, Landroid/text/Spanned;

    .line 102
    .local v19, "s":Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 103
    .local v21, "spans":[Ljava/lang/Object;
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 104
    .local v13, "destLen":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 105
    aget-object v20, v21, v16

    .line 106
    .local v20, "span":Ljava/lang/Object;
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 107
    .local v22, "start":I
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 108
    .local v14, "end":I
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    .line 109
    .local v15, "flags":I
    move/from16 v0, v22

    if-gt v0, v13, :cond_4

    .line 110
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1, v3, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 115
    .end local v13    # "destLen":I
    .end local v14    # "end":I
    .end local v15    # "flags":I
    .end local v16    # "i":I
    .end local v19    # "s":Landroid/text/Spanned;
    .end local v20    # "span":Ljava/lang/Object;
    .end local v21    # "spans":[Ljava/lang/Object;
    .end local v22    # "start":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kingsoft/mail/ui/EllipsizedMultilineTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 p1, v12

    .line 117
    goto/16 :goto_0
.end method
