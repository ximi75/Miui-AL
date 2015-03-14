.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;
.super Ljava/lang/Object;
.source "MailEditorToolsBarFontSizePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDefaultIndex:I

.field private mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

.field private mFontSizeRootView:Landroid/view/View;

.field private mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "editManager"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    .line 15
    iput-object p2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 16
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->init(Landroid/view/View;)V

    .line 17
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 20
    const v1, 0x7f0c014c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    .line 22
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    .line 23
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c014d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 24
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c014e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 25
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c014f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 26
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c0150

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 27
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c0151

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 28
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    const v4, 0x7f0c0152

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aput-object v1, v2, v3

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->setPosIndex(I)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

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
    .line 50
    instance-of v1, p1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    if-eqz v1, :cond_1

    .line 51
    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->setSelected(Z)V

    :cond_0
    move-object v1, p1

    .line 55
    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getPosIndex()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    move-object v1, p1

    .line 56
    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getTextSize()F

    move-result v1

    float-to-int v0, v1

    .line 57
    .local v0, "fontsize":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 58
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setFontSize(I)V

    .line 60
    .end local v0    # "fontsize":I
    :cond_1
    return-void
.end method

.method public setSelectedFontSize(I)V
    .locals 4
    .param p1, "fontsize"    # I

    .prologue
    const/4 v3, -0x1

    .line 64
    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    if-eq v1, v3, :cond_2

    .line 65
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    if-ne v1, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    iget v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->setSelected(Z)V

    .line 72
    :cond_2
    iput v3, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    if-ne v1, p1, :cond_3

    .line 75
    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mDefaultIndex:I

    .line 76
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeItems:[Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->setSelected(Z)V

    goto :goto_0

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->mFontSizeRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_0
    return-void

    .line 40
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
