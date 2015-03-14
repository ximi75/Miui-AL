.class public Lcom/kingsoft/mail/ui/QuickReplyEditText;
.super Landroid/widget/EditText;
.source "QuickReplyEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;
    }
.end annotation


# instance fields
.field private mOnSizeChangedListner:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 46
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyEditText;->mOnSizeChangedListner:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kingsoft/mail/ui/QuickReplyEditText;->mOnSizeChangedListner:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;->onSizeChanged(IIII)Z

    .line 49
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;)V
    .locals 0
    .param p1, "onEditTextSizeChangedListenr"    # Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyEditText;->mOnSizeChangedListner:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    .line 58
    return-void
.end method
