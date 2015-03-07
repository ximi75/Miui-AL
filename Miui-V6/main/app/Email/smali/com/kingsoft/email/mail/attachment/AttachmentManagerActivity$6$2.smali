.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$2;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 540
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$2;->this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$2;->this$1:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 545
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 547
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
