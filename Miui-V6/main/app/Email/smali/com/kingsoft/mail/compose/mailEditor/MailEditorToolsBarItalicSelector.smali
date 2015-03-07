.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;
.super Ljava/lang/Object;
.source "MailEditorToolsBarItalicSelector.java"

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
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 13
    return-void
.end method


# virtual methods
.method public varargs onCall(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 18
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->clearFontItalic()V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    sget-object v1, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;->None:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setPanelVisible(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager$PanelType;Z)V

    .line 25
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 21
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarItalicSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setFontItalic()V

    goto :goto_0
.end method
