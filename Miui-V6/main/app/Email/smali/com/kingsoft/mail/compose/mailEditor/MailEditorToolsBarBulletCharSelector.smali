.class public Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;
.super Ljava/lang/Object;
.source "MailEditorToolsBarBulletCharSelector.java"

# interfaces
.implements Lcom/kingsoft/mail/compose/mailEditor/IMailEditorToolsBarItemLogic;


# instance fields
.field private mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;)V
    .locals 0
    .param p1, "editorManager"    # Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 11
    return-void
.end method


# virtual methods
.method public varargs onCall(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 17
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->clearBullet()V

    .line 22
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 20
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/MailEditorToolsBarBulletCharSelector;->mEditorManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->setBullet()V

    goto :goto_0
.end method
