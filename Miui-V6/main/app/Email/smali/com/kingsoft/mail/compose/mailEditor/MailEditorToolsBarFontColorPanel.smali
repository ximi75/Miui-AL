.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;
.super Ljava/lang/Object;
.source "MailEditorToolsBarFontColorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mFontColorRootView:Landroid/view/View;

.field private mImageResources:[I

.field mImageViewColors:[I

.field mImageViews:[Landroid/widget/ImageView;

.field mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "editManager"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    .line 24
    iput-object p2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 25
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->init(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    const v1, 0x7f0c0144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    .line 30
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    .line 31
    const/4 v1, 0x7

    new-array v1, v1, [I

    const-string/jumbo v2, "#fb3157"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    const-string/jumbo v2, "#ff8f35"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v6

    const-string/jumbo v2, "#a3d029"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    const-string/jumbo v2, "#009ce4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v8

    const-string/jumbo v2, "#25dbb6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v9

    const/4 v2, 0x5

    const-string/jumbo v3, "#957ef6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x6

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    .line 33
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v3, 0x7f0c0145

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 34
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v3, 0x7f0c0146

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v6

    .line 35
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v3, 0x7f0c0147

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v7

    .line 36
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v3, 0x7f0c0149

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v8

    .line 37
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v3, 0x7f0c0148

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v9

    .line 38
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v4, 0x7f0c014a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 39
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    const v4, 0x7f0c014b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 41
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    .line 42
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const v2, 0x7f020111

    aput v2, v1, v5

    .line 43
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const v2, 0x7f020110

    aput v2, v1, v6

    .line 44
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const v2, 0x7f02010f

    aput v2, v1, v7

    .line 45
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const v2, 0x7f02010d

    aput v2, v1, v8

    .line 46
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const v2, 0x7f02010e

    aput v2, v1, v9

    .line 47
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const/4 v2, 0x5

    const v3, 0x7f020113

    aput v3, v1, v2

    .line 48
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    const/4 v2, 0x6

    const v3, 0x7f02010c

    aput v3, v1, v2

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getColorResourceID(I)I
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageResources:[I

    aget v1, v1, v0

    .line 105
    :goto_1
    return v1

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setFontClolr(I)V

    .line 97
    return-void
.end method

.method public setDispColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 72
    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 73
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 79
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViewColors:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_3

    .line 81
    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mSelectedIndex:I

    .line 82
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 79
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->mFontColorRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
