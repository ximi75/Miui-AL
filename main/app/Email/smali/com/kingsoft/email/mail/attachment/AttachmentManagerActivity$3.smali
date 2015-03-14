.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

.field final synthetic val$activity:Lmiui/app/Activity;

.field final synthetic val$searchCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;->val$activity:Lmiui/app/Activity;

    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;->val$searchCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;->val$activity:Lmiui/app/Activity;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$3;->val$searchCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 341
    return-void
.end method
