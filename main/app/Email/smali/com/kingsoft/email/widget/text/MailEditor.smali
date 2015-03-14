.class public Lcom/kingsoft/email/widget/text/MailEditor;
.super Landroid/widget/FrameLayout;
.source "MailEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/kingsoft/email/widget/text/IStyleable;
.implements Lcom/kingsoft/email/widget/text/IUndoable;
.implements Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;
.implements Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;,
        Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;
    }
.end annotation


# instance fields
.field private mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

.field private mEditable:Landroid/text/Editable;

.field private mImageSource:Lcom/kingsoft/email/widget/text/IImageSource;

.field private mInnerInvoking:Z

.field private mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

.field private mShouldAppliedStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRemovedStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation
.end field

.field private mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

.field private mStandardSpanPos:[I

.field private mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;-><init>(Lcom/kingsoft/email/widget/text/MailEditor;)V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    .line 118
    iput-boolean v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    .line 127
    new-instance v0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    .line 128
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    .line 129
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    new-instance v1, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;-><init>(Landroid/text/Editable;)V

    const/16 v2, 0x12

    invoke-interface {v0, v1, v3, v3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setSelectionChangedListener(Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;)V

    .line 132
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setOnSpanChangedListener(Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;)V

    .line 133
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/MailEditor;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->registerNotifier()V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->setDensity(F)V

    .line 141
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getTextSize()F

    move-result v0

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->setDefaultFontSize(F)V

    .line 142
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/FontColorSpan;->setDefaultFontColor(I)V

    .line 143
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setPaint(Landroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method private checkStandardSpans(ILandroid/text/Spannable;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "editable"    # Landroid/text/Spannable;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 840
    iget-boolean v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    if-nez v2, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-interface {p2, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    .line 841
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    .line 842
    const-class v2, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-interface {p2, p1, p1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/LeadingMarginSpan$Standard;

    .line 844
    .local v1, "standardSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    aget-object v3, v1, v0

    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v4

    .line 847
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    aget v2, v2, v4

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    .line 848
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    const/4 v3, 0x0

    aget-object v4, v1, v0

    invoke-interface {p2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aput v4, v2, v3

    .line 849
    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    .line 855
    .end local v0    # "i":I
    .end local v1    # "standardSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    :cond_1
    return-void

    .line 845
    .restart local v0    # "i":I
    .restart local v1    # "standardSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearStyleBetween(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;II)V
    .locals 7
    .param p1, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 242
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, p2, p3, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 243
    .local v4, "spans":[Ljava/lang/Object;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 244
    .local v3, "span":Ljava/lang/Object;
    invoke-static {v3}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0, v3, p2, p3}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyleBetween(Ljava/lang/Object;II)V

    goto :goto_1

    .line 250
    .end local v3    # "span":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private clearStyleBetween(Ljava/lang/Object;II)V
    .locals 15
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 253
    new-instance v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 254
    .local v7, "selectionInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/widget/text/MailEditor;->getSpanInterval(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v8

    .line 255
    .local v8, "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static {v8, v7}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->substract(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v6

    .line 256
    .local v6, "resultIntervals":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v9

    .line 257
    .local v9, "style":Lcom/kingsoft/email/widget/text/Style;
    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 258
    move-object v2, v6

    .local v2, "arr$":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v2, v3

    .line 259
    .local v4, "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v9}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v11

    iget v12, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v13, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    const/16 v14, 0x22

    invoke-interface {v10, v11, v12, v13, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v4    # "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    :cond_0
    return-void
.end method

.method private getSpanInterval(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .locals 3
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 238
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    return-object v0
.end method

.method private getSpansByType(IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)[Ljava/lang/Object;
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 216
    invoke-static {p3}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v1

    .line 217
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v7, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 219
    .local v6, "spans":[Ljava/lang/Object;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 220
    .local v5, "span":Ljava/lang/Object;
    invoke-static {v5, p3}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->isTypeOf(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "span":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method

.method private installListPhOpSpan(IILcom/kingsoft/email/widget/text/span/ListType;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const-class v2, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    invoke-static {v1, v3, v3, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const-class v2, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    invoke-static {v1, v3, v3, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-direct {v0, v1, p3}, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;-><init>(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 269
    .local v0, "liPhOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const/16 v2, 0x12

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 282
    .end local v0    # "liPhOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 272
    iput-boolean v4, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    .line 274
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 275
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setSelection(II)V

    .line 276
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, p1, v2, p3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v1, p1, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->mergeAnceps(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v1, p1, p2, p3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    goto :goto_1
.end method

.method private removeEmptySpan(ILjava/lang/Class;)V
    .locals 7
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, p1, p1, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 230
    .local v4, "spans":[Ljava/lang/Object;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 231
    .local v3, "neighborSpan":Ljava/lang/Object;
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v6, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 232
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v3    # "neighborSpan":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private resetStandardSpans(Landroid/text/Spannable;)V
    .locals 7
    .param p1, "editable"    # Landroid/text/Spannable;

    .prologue
    const/4 v4, 0x1

    .line 863
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    if-eqz v3, :cond_0

    .line 864
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 865
    .local v1, "endSpanPos":I
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    aget v3, v3, v4

    if-le v1, v3, :cond_0

    .line 867
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v4, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0x33

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 868
    const-class v3, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-interface {p1, v1, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/LeadingMarginSpan$Standard;

    .line 869
    .local v2, "standardSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 870
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 871
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v4, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpanPos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/16 v5, 0x33

    invoke-interface {p1, v3, v4, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v1    # "endSpanPos":I
    .end local v2    # "standardSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mStandardSpan:Landroid/text/style/LeadingMarginSpan$Standard;

    .line 882
    return-void

    .line 875
    .restart local v1    # "endSpanPos":I
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addLinks(I)Z
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 583
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-direct {p0, p2, v0}, Lcom/kingsoft/email/widget/text/MailEditor;->checkStandardSpans(ILandroid/text/Spannable;)V

    .line 588
    return-void
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V
    .locals 4
    .param p1, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 515
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v1

    .line 516
    .local v1, "start":I
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v0

    .line 518
    .local v0, "end":I
    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p1, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    sget-object v3, Lcom/kingsoft/email/widget/text/span/ListType;->NONE:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-static {v2, v1, v1, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 520
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v2, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeList(Landroid/text/Editable;I)V

    .line 533
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v2, v1, v0}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByEnv(Landroid/text/Editable;II)V

    .line 535
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v3, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;

    invoke-interface {v2, v3}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 536
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v3, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;

    invoke-interface {v2, v3}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 538
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    invoke-interface {v2}, Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;->afterTextStyleChanged()V

    .line 541
    :cond_0
    return-void

    .line 521
    :cond_1
    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p1, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    sget-object v3, Lcom/kingsoft/email/widget/text/span/ListType;->NONE:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-static {v2, v1, v1, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 523
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v2, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeList(Landroid/text/Editable;I)V

    goto :goto_0

    .line 525
    :cond_2
    if-ne v1, v0, :cond_3

    .line 526
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    new-instance v3, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v3}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_3
    invoke-direct {p0, p1, v1, v0}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyleBetween(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;II)V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, -0x1

    .line 797
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getId()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 799
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 800
    check-cast v1, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;

    .line 801
    .local v1, "mp":Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->getSelectionStart()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 814
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/widget/text/MailEditor;->setSelection(II)V

    .line 818
    .end local v1    # "mp":Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;
    .end local v2    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void

    .line 807
    .restart local v1    # "mp":Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;
    .restart local v2    # "p":Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 830
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;

    invoke-direct {v2, v0}, Lcom/kingsoft/email/widget/text/MailEditor$MailEditorParcelable;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_0
    return-void

    .restart local v0    # "p":Landroid/os/Parcel;
    :cond_1
    move v1, v2

    .line 827
    goto :goto_0
.end method

.method public getDefaultFontColor()I
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/kingsoft/email/widget/text/span/FontColorSpan;->getDefaultFontColor()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->getDefaultFontSize()F

    move-result v0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "htmlEncodedString":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "decodedString":Ljava/lang/String;
    return-object v0
.end method

.method public getImageSource()Lcom/kingsoft/email/widget/text/IImageSource;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mImageSource:Lcom/kingsoft/email/widget/text/IImageSource;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionFullMatchedStyles()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v1

    .line 546
    .local v1, "start":I
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v0

    .line 547
    .local v0, "end":I
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const-class v3, Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getTextStylesByRange(Landroid/text/Editable;IILjava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public getSelectionIntersectedStyles(Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;)Ljava/util/Map;
    .locals 11
    .param p1, "styleKind"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v8, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v6

    .line 554
    .local v6, "start":I
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v1

    .line 555
    .local v1, "end":I
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    const-class v10, Ljava/lang/Object;

    invoke-static {v9, v6, v1, v10}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 556
    .local v5, "spans":[Ljava/lang/Object;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 557
    .local v4, "span":Ljava/lang/Object;
    invoke-static {v4}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v7

    .line 558
    .local v7, "style":Lcom/kingsoft/email/widget/text/Style;
    invoke-virtual {v7}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getKind()Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 559
    invoke-virtual {v7}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    .end local v4    # "span":Ljava/lang/Object;
    .end local v7    # "style":Lcom/kingsoft/email/widget/text/Style;
    :cond_1
    return-object v8
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getShouldAppliedStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShouldRemovedStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStructureDescription()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->debugGetStructureDescription(Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public innerGetEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    return-object v0
.end method

.method public insertImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/MailEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 310
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/email/widget/text/MailEditor;->insertImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public insertImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 315
    const-string/jumbo p2, "\ufffc"

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v2

    .line 319
    .local v2, "selStart":I
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v1

    .line 320
    .local v1, "selEnd":I
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v3, v2, v1, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 321
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 322
    .local v0, "imgSpan":Landroid/text/style/ImageSpan;
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 323
    return-void
.end method

.method public insertImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mImageSource:Lcom/kingsoft/email/widget/text/IImageSource;

    invoke-interface {v0, p1}, Lcom/kingsoft/email/widget/text/IImageSource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/email/widget/text/MailEditor;->insertImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, v1, v1, p4, p5}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->layout(IIII)V

    .line 422
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 2
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v1, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 757
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v1, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 758
    return-void
.end method

.method public onSpanChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v1, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 767
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    const-class v1, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 768
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 50
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 593
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    move/from16 v45, v0

    if-eqz v45, :cond_0

    .line 594
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    .line 748
    :goto_0
    return-void

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->resetStandardSpans(Landroid/text/Spannable;)V

    .line 601
    if-nez p3, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v45

    if-eqz v45, :cond_1

    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v45

    const/16 v46, 0xa

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    const-class v47, Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v46

    move-object/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 603
    .local v28, "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v45, v0

    if-nez v45, :cond_5

    new-instance v33, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;-><init>(Landroid/text/Editable;)V

    .line 606
    .local v33, "phOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v45

    add-int/lit8 v46, p2, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_7

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const-class v46, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 608
    .local v26, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 609
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/widget/text/MailEditor;->mInnerInvoking:Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0xa

    invoke-interface/range {v45 .. v46}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v46, v26, v46

    invoke-interface/range {v45 .. v46}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    .line 613
    .local v25, "liSpanStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v46, v26, v46

    add-int/lit8 v47, p2, 0x1

    const/16 v48, 0x33

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v25

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    add-int/lit8 v47, p2, 0x2

    const/16 v48, 0x12

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 618
    .end local v25    # "liSpanStart":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    invoke-virtual/range {v45 .. v46}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setSelection(I)V

    .line 625
    .end local v26    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v28    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v33    # "phOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 626
    .local v11, "entryIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;>;"
    add-int v29, p2, p4

    .line 627
    .local v29, "newStart":I
    if-nez p2, :cond_8

    const/16 v37, 0x12

    .line 628
    .local v37, "spanFlags":I
    :cond_2
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_b

    .line 629
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 630
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-static/range {v45 .. v45}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v35

    .line 631
    .local v35, "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v29

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 632
    .local v13, "existedSpan":Ljava/lang/Object;
    if-nez v13, :cond_3

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v29

    move/from16 v2, v29

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    .line 634
    .local v41, "spans":[Ljava/lang/Object;
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v45, v0

    if-eqz v45, :cond_9

    const/16 v45, 0x0

    aget-object v13, v41, v45

    .line 635
    :goto_5
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-interface {v0, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v45

    move/from16 v0, v29

    move/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 636
    const/4 v13, 0x0

    .line 639
    .end local v13    # "existedSpan":Ljava/lang/Object;
    .end local v41    # "spans":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-interface {v0, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 640
    .local v15, "existedSpanStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-interface {v0, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 641
    .local v14, "existedSpanEnd":I
    move/from16 v0, p2

    if-le v0, v15, :cond_4

    move/from16 v0, p2

    if-le v0, v14, :cond_a

    .line 642
    :cond_4
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/kingsoft/email/widget/text/Style;

    invoke-static/range {v45 .. v45}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v34

    .line 643
    .local v34, "span":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    move/from16 v2, p2

    move/from16 v3, v29

    move/from16 v4, v37

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpanIndex(Landroid/text/Editable;Ljava/lang/Object;)I

    move-result v19

    .line 646
    .local v19, "index":I
    move/from16 v0, v29

    if-ne v0, v15, :cond_2

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v19

    move-object/from16 v2, v35

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->mergeNext(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 745
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    .end local v11    # "entryIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;>;"
    .end local v14    # "existedSpanEnd":I
    .end local v15    # "existedSpanStart":I
    .end local v19    # "index":I
    .end local v29    # "newStart":I
    .end local v34    # "span":Ljava/lang/Object;
    .end local v35    # "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "spanFlags":I
    :catch_0
    move-exception v12

    .line 746
    .local v12, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 603
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    .restart local v28    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    :cond_5
    :try_start_1
    new-instance v33, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v46, v28, v46

    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;-><init>(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListType;)V

    goto/16 :goto_1

    .line 616
    .restart local v26    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .restart local v33    # "phOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    add-int/lit8 v47, p2, 0x1

    const/16 v48, 0x12

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 621
    .end local v26    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    add-int/lit8 v47, p2, 0x1

    const/16 v48, 0x12

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 627
    .end local v28    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v33    # "phOpSpan":Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
    .restart local v11    # "entryIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;>;"
    .restart local v29    # "newStart":I
    :cond_8
    const/16 v37, 0x22

    goto/16 :goto_4

    .line 634
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    .restart local v13    # "existedSpan":Ljava/lang/Object;
    .restart local v35    # "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "spanFlags":I
    .restart local v41    # "spans":[Ljava/lang/Object;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 649
    .end local v13    # "existedSpan":Ljava/lang/Object;
    .end local v41    # "spans":[Ljava/lang/Object;
    .restart local v14    # "existedSpanEnd":I
    .restart local v15    # "existedSpanStart":I
    :cond_a
    move/from16 v0, p2

    if-le v0, v15, :cond_2

    move/from16 v0, p2

    if-gt v0, v14, :cond_2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/kingsoft/email/widget/text/Style;

    invoke-static {v13}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lcom/kingsoft/email/widget/text/Style;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_2

    .line 651
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/kingsoft/email/widget/text/Style;

    invoke-static/range {v45 .. v45}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v34

    .line 652
    .restart local v34    # "span":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int v46, p2, p4

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    move/from16 v2, p2

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->applySpan(Landroid/text/Editable;Ljava/lang/Object;II)Ljava/lang/Object;

    goto/16 :goto_4

    .line 655
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    .end local v14    # "existedSpanEnd":I
    .end local v15    # "existedSpanStart":I
    .end local v34    # "span":Ljava/lang/Object;
    .end local v35    # "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/Map;->clear()V

    .line 657
    if-nez p3, :cond_e

    .line 658
    new-instance v8, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move/from16 v0, p2

    move/from16 v1, v29

    invoke-direct {v8, v0, v1}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 659
    .local v8, "currentInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 660
    .local v44, "styleIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/widget/text/Style;>;"
    :cond_c
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_e

    .line 661
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/kingsoft/email/widget/text/Style;

    .line 662
    .local v43, "style":Lcom/kingsoft/email/widget/text/Style;
    invoke-virtual/range {v43 .. v43}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v45

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v29

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getSpansByType(IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)[Ljava/lang/Object;

    move-result-object v41

    .line 663
    .restart local v41    # "spans":[Ljava/lang/Object;
    move-object/from16 v5, v41

    .local v5, "arr$":[Ljava/lang/Object;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v5    # "arr$":[Ljava/lang/Object;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .local v18, "i$":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget-object v34, v5, v18

    .line 664
    .restart local v34    # "span":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->getSpanInterval(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-static {v0, v8}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->substract(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v21

    .line 665
    .local v21, "intervals":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 666
    invoke-static/range {v34 .. v34}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v7

    .line 667
    .local v7, "curStyle":Lcom/kingsoft/email/widget/text/Style;
    move-object/from16 v6, v21

    .local v6, "arr$":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    array-length v0, v6

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v17, 0x0

    .end local v18    # "i$":I
    .restart local v17    # "i$":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    aget-object v20, v6, v17

    .line 668
    .local v20, "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    invoke-static {v7}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v20

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v47, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v48, v0

    const/16 v49, 0x22

    invoke-interface/range {v45 .. v49}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 667
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 663
    .end local v20    # "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    :cond_d
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto :goto_6

    .line 673
    .end local v6    # "arr$":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v7    # "curStyle":Lcom/kingsoft/email/widget/text/Style;
    .end local v8    # "currentInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v18    # "i$":I
    .end local v21    # "intervals":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v23    # "len$":I
    .end local v34    # "span":Ljava/lang/Object;
    .end local v41    # "spans":[Ljava/lang/Object;
    .end local v43    # "style":Lcom/kingsoft/email/widget/text/Style;
    .end local v44    # "styleIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/widget/text/Style;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/Map;->clear()V

    .line 680
    if-lez p3, :cond_10

    .line 681
    const-class v45, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/MailEditor;->removeEmptySpan(ILjava/lang/Class;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const-class v46, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, p2

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/text/style/ParagraphStyle;

    .line 684
    .local v32, "parSpans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v5, v32

    .local v5, "arr$":[Landroid/text/style/ParagraphStyle;
    array-length v0, v5

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    aget-object v34, v5, v17

    .line 685
    .local v34, "span":Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_f

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 684
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 688
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v38

    .line 689
    .local v38, "spanLeft":I
    const-class v45, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/MailEditor;->removeEmptySpan(ILjava/lang/Class;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v39

    .line 691
    .local v39, "spanRight":I
    const-class v45, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/MailEditor;->removeEmptySpan(ILjava/lang/Class;)V

    goto :goto_9

    .line 697
    .end local v5    # "arr$":[Landroid/text/style/ParagraphStyle;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v32    # "parSpans":[Landroid/text/style/ParagraphStyle;
    .end local v34    # "span":Landroid/text/style/ParagraphStyle;
    .end local v38    # "spanLeft":I
    .end local v39    # "spanRight":I
    :cond_10
    if-lez p3, :cond_11

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v27

    .line 699
    .local v27, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v27, :cond_11

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->mergeNext(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 704
    .end local v27    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const-class v46, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v29

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    .line 705
    .local v31, "parOpSpans":[Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;
    move-object/from16 v5, v31

    .local v5, "arr$":[Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;
    array-length v0, v5

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    aget-object v30, v5, v17

    .line 706
    .local v30, "opSpan":Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;
    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->execute()V

    .line 705
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 708
    .end local v30    # "opSpan":Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    const-class v46, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v29

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    .line 709
    .local v24, "liOpSpans":[Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    move-object/from16 v5, v24

    .local v5, "arr$":[Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    array-length v0, v5

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    aget-object v30, v5, v17

    .line 710
    .local v30, "opSpan":Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->execute()V

    .line 709
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 713
    .end local v30    # "opSpan":Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    :cond_13
    if-lez p3, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Landroid/text/Editable;->length()I

    move-result v45

    if-nez v45, :cond_14

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    new-instance v46, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v47, v0

    invoke-direct/range {v46 .. v47}, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;-><init>(Landroid/text/Editable;)V

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x12

    invoke-interface/range {v45 .. v49}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 717
    :cond_14
    if-nez p3, :cond_17

    .line 719
    add-int v9, p2, p4

    .line 720
    .local v9, "endIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, p2

    invoke-static {v0, v1, v9}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getLists(Landroid/text/Editable;II)[Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v28

    .line 721
    .restart local v28    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v28, :cond_17

    .line 722
    move/from16 v42, p2

    .line 723
    .local v42, "startIndex":I
    const/16 v40, 0x0

    .line 724
    .local v40, "spanStart":I
    const/16 v36, 0x0

    .line 725
    .local v36, "spanEnd":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v16

    move/from16 v1, v45

    if-ge v0, v1, :cond_16

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    aget-object v46, v28, v16

    invoke-interface/range {v45 .. v46}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    aget-object v46, v28, v16

    invoke-interface/range {v45 .. v46}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v36

    .line 728
    move/from16 v0, v40

    move/from16 v1, v42

    if-le v0, v1, :cond_15

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v42

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/helper/ParaHelper;->applyParaByNChar(Landroid/text/Editable;II)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->recreateListItemsByNChar(Landroid/text/Editable;I)V

    .line 735
    :goto_d
    move/from16 v42, v36

    .line 725
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 732
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->recreateListItemsByNChar(Landroid/text/Editable;I)V

    goto :goto_d

    .line 738
    :cond_16
    move/from16 v0, v42

    if-ge v0, v9, :cond_17

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v42

    invoke-static {v0, v1, v9}, Lcom/kingsoft/email/widget/text/helper/ParaHelper;->applyParaByNChar(Landroid/text/Editable;II)V

    .line 744
    .end local v9    # "endIndex":I
    .end local v16    # "i":I
    .end local v28    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v36    # "spanEnd":I
    .end local v40    # "spanStart":I
    .end local v42    # "startIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v45, v0

    add-int/lit8 v46, p2, 0x1

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByEnv(Landroid/text/Editable;II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public redo()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method protected registerNotifier()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    new-instance v1, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;-><init>()V

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->register(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V

    .line 148
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    new-instance v1, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;-><init>()V

    invoke-interface {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->register(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V

    .line 149
    return-void
.end method

.method public registerNotifierListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    invoke-interface {v0}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->getEventBus()Lcom/google/common/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public removeComposingSpans()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 382
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .param p1, "rId"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setHint(I)V

    .line 358
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setHint(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 13
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 330
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    const-class v11, Landroid/text/style/StyleSpan;

    invoke-interface {v9, v12, v10, v11}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/StyleSpan;

    .line 331
    .local v7, "styleSpans":[Landroid/text/style/StyleSpan;
    move-object v0, v7

    .local v0, "arr$":[Landroid/text/style/StyleSpan;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 332
    .local v6, "span":Landroid/text/style/StyleSpan;
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v6    # "span":Landroid/text/style/StyleSpan;
    :cond_0
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    const-class v11, Landroid/text/style/UnderlineSpan;

    invoke-interface {v9, v12, v10, v11}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/UnderlineSpan;

    .line 335
    .local v8, "underlineSpans":[Landroid/text/style/UnderlineSpan;
    move-object v0, v8

    .local v0, "arr$":[Landroid/text/style/UnderlineSpan;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 336
    .local v6, "span":Landroid/text/style/UnderlineSpan;
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    .end local v6    # "span":Landroid/text/style/UnderlineSpan;
    :cond_1
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    const-class v11, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v9, v12, v10, v11}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    .line 339
    .local v3, "leadingMarginSpans":[Landroid/text/style/LeadingMarginSpan;
    move-object v0, v3

    .local v0, "arr$":[Landroid/text/style/LeadingMarginSpan;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    .line 340
    .local v6, "span":Landroid/text/style/LeadingMarginSpan;
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 342
    .end local v6    # "span":Landroid/text/style/LeadingMarginSpan;
    :cond_2
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    const-class v11, Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;

    invoke-interface {v9, v12, v10, v11}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;

    .line 343
    .local v5, "opSpans":[Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;
    move-object v0, v5

    .local v0, "arr$":[Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 344
    .local v6, "span":Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 347
    .end local v6    # "span":Lcom/kingsoft/email/widget/text/operatorspan/OpSpanBase;
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 348
    .local v1, "filters":[Landroid/text/InputFilter;
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    new-array v10, v12, [Landroid/text/InputFilter;

    invoke-interface {v9, v10}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 350
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9}, Landroid/text/Editable;->clear()V

    .line 351
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-static {p1}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 353
    iget-object v9, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 354
    return-void
.end method

.method public setImageSource(Lcom/kingsoft/email/widget/text/IImageSource;)V
    .locals 0
    .param p1, "imageSource"    # Lcom/kingsoft/email/widget/text/IImageSource;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mImageSource:Lcom/kingsoft/email/widget/text/IImageSource;

    .line 306
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 789
    return-void
.end method

.method public setOnTextStyleChangedListener(Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    .line 185
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setSelection(I)V

    .line 378
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setSelection(II)V

    .line 374
    return-void
.end method

.method public setStyle(Lcom/kingsoft/email/widget/text/Style;)V
    .locals 21
    .param p1, "style"    # Lcom/kingsoft/email/widget/text/Style;

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v14

    .line 459
    .local v14, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditText:Lcom/kingsoft/email/widget/text/internal/EditTextCustom;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v5

    .line 460
    .local v5, "end":I
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v15

    .line 461
    .local v15, "styleType":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    sget-object v17, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 462
    sget-object v17, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v5, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->installListPhOpSpan(IILcom/kingsoft/email/widget/text/span/ListType;)V

    .line 503
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14, v5}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByEnv(Landroid/text/Editable;II)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    move-object/from16 v17, v0

    const-class v18, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifier;

    invoke-interface/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mNotifierRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    move-object/from16 v17, v0

    const-class v18, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;

    invoke-interface/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->notifyState(Ljava/lang/Class;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mTextStyleChangedListener:Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;->afterTextStyleChanged()V

    .line 511
    :cond_0
    return-void

    .line 463
    :cond_1
    sget-object v17, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 464
    sget-object v17, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v5, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->installListPhOpSpan(IILcom/kingsoft/email/widget/text/span/ListType;)V

    goto :goto_0

    .line 466
    :cond_2
    if-ne v14, v5, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldAppliedStyles:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mShouldRemovedStyles:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_3
    if-nez v14, :cond_5

    const/16 v10, 0x12

    .line 471
    .local v10, "spanFlags":I
    :goto_1
    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    invoke-interface/range {v17 .. v18}, Landroid/text/Editable;->charAt(I)C

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 472
    add-int/lit8 v14, v14, -0x1

    .line 474
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    invoke-static {v15}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v5, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 475
    .local v13, "spans":[Ljava/lang/Object;
    array-length v0, v13

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14, v5, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 470
    .end local v10    # "spanFlags":I
    .end local v13    # "spans":[Ljava/lang/Object;
    :cond_5
    const/16 v10, 0x22

    goto :goto_1

    .line 478
    .restart local v10    # "spanFlags":I
    .restart local v13    # "spans":[Ljava/lang/Object;
    :cond_6
    new-instance v8, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    invoke-direct {v8, v14, v5}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 479
    .local v8, "selectionInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    new-instance v16, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v0, v8, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v17, v0

    iget v0, v8, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 480
    .local v16, "targetInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_b

    aget-object v9, v4, v6

    .line 481
    .local v9, "span":Ljava/lang/Object;
    invoke-static {v9}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v12

    .line 482
    .local v12, "spanStyle":Lcom/kingsoft/email/widget/text/Style;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->isStyleTypeAndArgumentsMatched(Lcom/kingsoft/email/widget/text/Style;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kingsoft/email/widget/text/MailEditor;->getSpanInterval(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v11

    .line 484
    .local v11, "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->add(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v16, v17, v18

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 480
    .end local v11    # "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 486
    :cond_8
    invoke-virtual {v12}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kingsoft/email/widget/text/MailEditor;->getSpanInterval(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v11

    .line 488
    .restart local v11    # "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    iget v0, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v14, :cond_9

    .line 489
    iput v14, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    .line 491
    :cond_9
    iget v0, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v5, :cond_a

    .line 492
    iput v5, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    .line 494
    :cond_a
    iget v0, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v17, v0

    iget v0, v11, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v9, v1, v2}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyleBetween(Ljava/lang/Object;II)V

    goto :goto_3

    .line 498
    .end local v9    # "span":Ljava/lang/Object;
    .end local v11    # "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v12    # "spanStyle":Lcom/kingsoft/email/widget/text/Style;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/MailEditor;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0
.end method

.method public stylsToString(Ljava/util/Set;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "fontStyles":Ljava/util/Set;, "Ljava/util/Set<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;>;"
    const/4 v2, 0x1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "BOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 168
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    const-string/jumbo v1, "UNDERLNE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 174
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    const-string/jumbo v1, "ITALIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_4
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    return-object v0
.end method

.method public test()V
    .locals 1

    .prologue
    .line 189
    const-string/jumbo v0, "<p>123</p><p>456</p>"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public undo()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method
