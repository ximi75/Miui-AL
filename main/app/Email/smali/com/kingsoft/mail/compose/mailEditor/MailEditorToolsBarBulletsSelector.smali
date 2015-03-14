.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;
.super Ljava/lang/Object;
.source "MailEditorToolsBarBulletsSelector.java"

# interfaces
.implements Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;


# instance fields
.field private mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V
    .locals 0
    .param p1, "editorManager"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 13
    return-void
.end method


# virtual methods
.method public varargs onCall(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 18
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->Bullets:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 19
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setComposePaddingBottom(I)V

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->Bullets:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 23
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletsSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setComposePaddingBottom(I)V

    goto :goto_0
.end method
