.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$9;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
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
    .line 768
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$9;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 772
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 778
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
