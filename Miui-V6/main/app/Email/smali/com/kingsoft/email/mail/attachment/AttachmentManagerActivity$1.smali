.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 161
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$1;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    .line 166
    return-void
.end method
