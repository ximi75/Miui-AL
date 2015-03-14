.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;
.super Ljava/lang/Object;
.source "MailEditorManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$1;,
        Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;
    }
.end annotation


# instance fields
.field private mAllToolButtons:[Landroid/view/View;

.field private mBoldView:Landroid/view/View;

.field private mBoldViewHeight:I

.field private mBulletNumView:Landroid/view/View;

.field private mBulletView:Landroid/view/View;

.field private mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

.field private mComposeView:Landroid/view/View;

.field private mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

.field private mFontSizeView:Landroid/view/View;

.field private mItalicView:Landroid/view/View;

.field private final mLogics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;",
            ">;"
        }
    .end annotation
.end field

.field private mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

.field private mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

.field private mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

.field private mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

.field private mRootView:Landroid/view/View;

.field private mUnderlineView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/MailEditor;)V
    .locals 1
    .param p1, "mailEditor"    # Lcom/kingsoft/email/widget/text/MailEditor;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    .line 49
    return-void
.end method

.method private changeSelectedBulletsImage(I)V
    .locals 2
    .param p1, "imgResource"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setImageResource(I)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private changeSelectedColorImage(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->getColorResourceID(I)I

    move-result v0

    .line 318
    .local v0, "imgSrc":I
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setImageResource(I)V

    .line 321
    :cond_0
    return-void
.end method

.method private clearSelectedButtons()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    if-eqz v1, :cond_0

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getComposeView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 303
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v0, 0x7f0c011f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAllButtonEnable(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 364
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    if-eqz v1, :cond_0

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setEnable(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 339
    if-eqz p1, :cond_0

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setAllButtonEnable(Z)V

    .line 349
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->clearSelectedButtons()V

    .line 343
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->setVisible(Z)V

    .line 344
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->setVisible(Z)V

    .line 345
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->setVisible(Z)V

    .line 347
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setAllButtonEnable(Z)V

    goto :goto_0
.end method

.method private setVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 352
    if-nez p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->clearSelectedButtons()V

    .line 354
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->setVisible(Z)V

    .line 355
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->setVisible(Z)V

    .line 356
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->setVisible(Z)V

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setComposePaddingBottom(I)V

    .line 361
    return-void

    .line 359
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public clearBullet()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 162
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 163
    return-void
.end method

.method public clearBulletNum()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 167
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 168
    return-void
.end method

.method public clearFontBold()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 142
    return-void
.end method

.method public clearFontColor()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 154
    return-void
.end method

.method public clearFontItalic()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 150
    return-void
.end method

.method public clearFontSize()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 158
    return-void
.end method

.method public clearFontUnderline()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    .line 146
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mRootView:Landroid/view/View;

    .line 55
    const v0, 0x7f0c013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBoldSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBoldSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    const v0, 0x7f0c013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    const v0, 0x7f0c013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarUnderlineSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarUnderlineSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    const v0, 0x7f0c013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizeSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizeSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    const v0, 0x7f0c013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    const v0, 0x7f0c0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const v0, 0x7f0c0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletNumView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletNumView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletNumView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarButAutonumSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarButAutonumSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    const v0, 0x7f0c013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->getId()I

    move-result v1

    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;-><init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;-><init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    .line 88
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;-><init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    .line 89
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;-><init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->getComposeView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mComposeView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->registerNotifierListener(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mAllToolButtons:[Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldViewHeight:I

    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setVisible(Z)V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mLogics:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;

    .line 174
    .local v0, "logic":Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;->onCall(Landroid/view/View;[Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 242
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setVisible(Z)V

    .line 246
    return-void
.end method

.method public onSetButtonState(Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifierEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifierEvent;
    .annotation runtime Lcom/google/common/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 181
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifierEvent;->getStyles()Ljava/util/Map;

    move-result-object v5

    .line 183
    .local v5, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    .local v0, "isBold":Z
    if-eqz v0, :cond_0

    .line 185
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 189
    :goto_0
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 190
    .local v1, "isItalic":Z
    if-eqz v1, :cond_1

    .line 191
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 195
    :goto_1
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 196
    .local v2, "isUnderline":Z
    if-eqz v2, :cond_2

    .line 197
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 201
    :goto_2
    const/high16 v3, -0x1000000

    .line 202
    .local v3, "settingColor":I
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/widget/text/Style;

    invoke-virtual {v6}, Lcom/kingsoft/email/widget/text/Style;->getMainArgument()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 207
    :goto_3
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v6, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->setDispColor(I)V

    .line 208
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->changeSelectedColorImage(I)V

    .line 210
    const/16 v4, 0x10

    .line 211
    .local v4, "settingFz":I
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/widget/text/Style;

    invoke-virtual {v6}, Lcom/kingsoft/email/widget/text/Style;->getMainArgument()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 216
    :goto_4
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-virtual {v6, v4}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->setSelectedFontSize(I)V

    .line 217
    return-void

    .line 187
    .end local v1    # "isItalic":Z
    .end local v2    # "isUnderline":Z
    .end local v3    # "settingColor":I
    .end local v4    # "settingFz":I
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 193
    .restart local v1    # "isItalic":Z
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mItalicView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 199
    .restart local v2    # "isUnderline":Z
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mUnderlineView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 205
    .restart local v3    # "settingColor":I
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v6}, Lcom/kingsoft/email/widget/text/MailEditor;->getDefaultFontColor()I

    move-result v3

    goto :goto_3

    .line 214
    .restart local v4    # "settingFz":I
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v6}, Lcom/kingsoft/email/widget/text/MailEditor;->getDefaultFontSize()F

    move-result v6

    float-to-int v4, v6

    goto :goto_4
.end method

.method public onSetButtonState(Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;
    .annotation runtime Lcom/google/common/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;->getParagraphStyle()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    .line 222
    .local v1, "style":Lcom/kingsoft/email/widget/text/Style;
    const/4 v0, 0x0

    .line 223
    .local v0, "imageResourceId":I
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 225
    const v0, 0x7f020107

    .line 230
    :goto_0
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletNumView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 232
    const v0, 0x7f020108

    .line 237
    :goto_1
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->changeSelectedBulletsImage(I)V

    .line 238
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletNumView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method public setBullet()V
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 110
    const-string/jumbo v0, "E50"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setBulletNum()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 104
    const-string/jumbo v0, "E60"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setComposePaddingBottom(I)V
    .locals 5
    .param p1, "bottomPadding"    # I

    .prologue
    .line 290
    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mComposeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 291
    .local v1, "left":I
    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mComposeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 292
    .local v3, "top":I
    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mComposeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 295
    .local v2, "right":I
    iget v4, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBoldViewHeight:I

    mul-int v0, p1, v4

    .line 297
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mComposeView:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    return-void
.end method

.method public setFontBold()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 127
    const-string/jumbo v0, "E01"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setFontClolr(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 120
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 122
    const-string/jumbo v0, "E05"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setFontItalic()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 137
    const-string/jumbo v0, "E02"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 115
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 116
    const-string/jumbo v0, "E04"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setFontUnderline()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setStyle(Lcom/kingsoft/email/widget/text/Style;)V

    .line 132
    const-string/jumbo v0, "E03"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V
    .locals 3
    .param p1, "pType"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->setVisible(Z)V

    .line 251
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->setVisible(Z)V

    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->setVisible(Z)V

    .line 254
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$1;->$SwitchMap$com$kingsoft$mail$compose$mailEditor$MailEditorManager$PanelType:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    sget-object v0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setComposePaddingBottom(I)V

    .line 282
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    .line 283
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    .line 284
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 287
    :cond_1
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontSizePanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontSizePanel;->setVisible(Z)V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    .line 259
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarFontColorPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarFontColorPanel;->setVisible(Z)V

    .line 264
    if-eqz p2, :cond_0

    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mBulletsView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mMailEditorToolsBarBulletsPanel:Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->setVisible(Z)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontSizeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 273
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->mFontColorView:Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;->setSelected(Z)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
