.class public Lcom/kingsoft/email/widget/text/internal/EditTextCustom;
.super Landroid/widget/EditText;
.source "EditTextCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;,
        Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;
    }
.end annotation


# instance fields
.field private mSelectionChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;

.field private mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;

    invoke-direct {v2}, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setFilters([Landroid/text/InputFilter;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;

    invoke-direct {v2}, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setFilters([Landroid/text/InputFilter;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;

    invoke-direct {v2}, Lcom/kingsoft/email/widget/text/ParaSpanRemoverInputFilter;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->setFilters([Landroid/text/InputFilter;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionStart()I

    move-result v4

    .line 71
    .local v4, "listIndex":I
    const/16 v7, 0x43

    if-ne p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getSelectionEnd()I

    move-result v7

    if-eq v4, v7, :cond_2

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 108
    :cond_1
    :goto_0
    return v6

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 76
    .local v0, "editableText":Landroid/text/Editable;
    const-class v7, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    invoke-interface {v0, v4, v4, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    .line 77
    .local v1, "liPhOpSpans":[Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
    array-length v7, v1

    if-eqz v7, :cond_3

    .line 78
    aget-object v7, v1, v9

    invoke-interface {v0, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    iget-object v7, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    if-eqz v7, :cond_1

    .line 80
    iget-object v7, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    aget-object v8, v1, v9

    invoke-interface {v7, v8}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;->onSpanChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {v0, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v5

    .line 86
    .local v5, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v5, :cond_4

    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {v0, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListItem(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v2

    .line 91
    .local v2, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    if-nez v2, :cond_5

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 95
    :cond_5
    invoke-static {v0, v2}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v3

    .line 96
    .local v3, "liSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    iget v7, v3, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v8, v3, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    sub-int/2addr v7, v8

    if-le v7, v6, :cond_6

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 100
    :cond_6
    iget v7, v3, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-static {v0, v7, v6}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->split(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 101
    iget v7, v3, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-static {v0, v7, v9}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->split(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 102
    iget v7, v3, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-static {v0, v7}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeList(Landroid/text/Editable;I)V

    .line 104
    iget-object v7, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    if-eqz v7, :cond_1

    .line 105
    iget-object v7, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    invoke-interface {v7, v5}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;->onSpanChanged(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 53
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSelectionChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSelectionChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;->onSelectionChanged(II)V

    .line 56
    :cond_0
    return-void
.end method

.method public setOnSpanChangedListener(Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSpanChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSpanChangedListener;

    .line 64
    return-void
.end method

.method public setSelectionChangedListener(Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/internal/EditTextCustom;->mSelectionChangedListener:Lcom/kingsoft/email/widget/text/internal/EditTextCustom$OnSelectionChangedListener;

    .line 60
    return-void
.end method
