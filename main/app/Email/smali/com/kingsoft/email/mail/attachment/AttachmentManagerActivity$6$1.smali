.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;->this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 528
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 530
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    :goto_0
    return v0

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;->this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->executeSearch(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;->this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1800(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
