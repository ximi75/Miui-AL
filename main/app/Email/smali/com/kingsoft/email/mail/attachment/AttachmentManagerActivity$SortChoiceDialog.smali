.class public Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortChoiceDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 453
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->sort(I)V
    invoke-static {v1, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;I)V

    .line 455
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$SortChoiceDialog;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1600(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "latestSortChoice"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 459
    return-void
.end method
