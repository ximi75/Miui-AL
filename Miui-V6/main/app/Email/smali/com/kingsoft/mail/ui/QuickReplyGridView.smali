.class public Lcom/kingsoft/mail/ui/QuickReplyGridView;
.super Landroid/widget/GridView;
.source "QuickReplyGridView.java"


# instance fields
.field private mMore:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 29
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyGridView;->mMore:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyGridView;->mMore:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyGridView;->mMore:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method public setMoreButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "more"    # Landroid/widget/ImageView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyGridView;->mMore:Landroid/widget/ImageView;

    .line 40
    return-void
.end method
