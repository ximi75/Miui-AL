.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$5;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$5;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$5;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mHandler:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;

    move-result-object v0

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$AttHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 475
    const/4 v0, 0x1

    return v0
.end method
