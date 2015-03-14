.class public Lcom/kingsoft/mail/chat/EllipsizeText;
.super Landroid/widget/TextView;
.source "EllipsizeText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;
    }
.end annotation


# static fields
.field private static Ellipsis:Ljava/lang/String;


# instance fields
.field private changed:Z

.field private final ellipsizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private fullText:Ljava/lang/CharSequence;

.field private isEllipsized:Z

.field private isStale:Z

.field private linesIfExceed:I

.field private maxLines:I

.field private spacingadd:F

.field private spacingmult:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/EllipsizeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/chat/EllipsizeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x5

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->ellipsizeListeners:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    .line 46
    iput v1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    .line 47
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingadd:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingmult:F

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f10027b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "workingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingmult:F

    iget v6, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingadd:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private resetText()V
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 129
    iget-object v7, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->fullText:Ljava/lang/CharSequence;

    .line 131
    .local v7, "text":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 132
    .local v0, "ellipsized":Z
    iget v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    if-eq v8, v10, :cond_2

    .line 133
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    .line 134
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    iget v9, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    if-le v8, v9, :cond_2

    .line 135
    iget v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    if-ne v8, v10, :cond_0

    .line 136
    iget v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    iput v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    .line 138
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->fullText:Ljava/lang/CharSequence;

    iget v9, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v11, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 140
    const/4 v1, 0x1

    .line 141
    .local v1, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    .line 142
    :goto_0
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    iget v9, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    if-le v8, v9, :cond_1

    .line 143
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    sub-int/2addr v8, v1

    invoke-interface {v7, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    .line 145
    sget-object v8, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v2, v8, :cond_6

    move v1, v2

    .line 150
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    new-instance v6, Landroid/text/SpannableString;

    sget-object v8, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    .local v6, "ss":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0077

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget-object v9, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v8, v11, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->supply(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 153
    const/4 v0, 0x1

    .line 156
    .end local v1    # "i":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "ss":Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 157
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->changed:Z

    .line 159
    :try_start_0
    instance-of v8, v7, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_3

    .line 160
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_3
    iput-boolean v11, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->changed:Z

    .line 166
    :cond_4
    iput-boolean v11, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isStale:Z

    .line 167
    iget-boolean v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isEllipsized:Z

    if-eq v0, v8, :cond_5

    .line 168
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isEllipsized:Z

    .line 169
    iget-object v8, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;

    .line 170
    .local v5, "listener":Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;
    invoke-interface {v5, v0}, Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;->onChanged(Z)V

    goto :goto_1

    .line 163
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listener":Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;
    :catchall_0
    move-exception v8

    iput-boolean v11, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->changed:Z

    throw v8

    .line 173
    :cond_5
    return-void

    .restart local v2    # "i":I
    .restart local v4    # "layout":Landroid/text/Layout;
    :cond_6
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0
.end method

.method private supply(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v5

    .line 177
    .local v5, "textLayout":Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    sub-float/2addr v6, v7

    sget-object v7, Lcom/kingsoft/mail/chat/EllipsizeText;->Ellipsis:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    sub-float v0, v6, v7

    .line 178
    .local v0, "diff":F
    const-string/jumbo v6, " "

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/chat/EllipsizeText;->createLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    .line 179
    .local v4, "spacew":F
    div-float v6, v0, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 181
    .local v2, "num":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 183
    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-object v3
.end method


# virtual methods
.method public addEllipsizeListener(Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public getLinesIfExceed()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isEllipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isStale:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/EllipsizeText;->resetText()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 113
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->changed:Z

    if-nez v0, :cond_0

    .line 114
    iput-object p1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->fullText:Ljava/lang/CharSequence;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isStale:Z

    .line 117
    :cond_0
    return-void
.end method

.method public removeEllipsizeListener(Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/mail/chat/EllipsizeText$EllipsizeListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 198
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingmult:F

    .line 106
    iput p2, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->spacingadd:F

    .line 107
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 108
    return-void
.end method

.method public setLinesIfExceed(I)V
    .locals 0
    .param p1, "linesIfExceed"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->linesIfExceed:I

    .line 97
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iput p1, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->maxLines:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/EllipsizeText;->isStale:Z

    .line 84
    return-void
.end method
