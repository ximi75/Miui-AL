.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;
.super Ljava/lang/Object;
.source "MailEditorToolsBarBulletsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBulletsRootView:Landroid/view/View;

.field mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "editManager"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mMailEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 14
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->init(Landroid/view/View;)V

    .line 15
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 18
    const v0, 0x7f0c0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mBulletsRootView:Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mBulletsRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mBulletsRootView:Landroid/view/View;

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
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mBulletsRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsPanel;->mBulletsRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    return-void

    .line 23
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
