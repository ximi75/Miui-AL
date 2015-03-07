.class public Lcom/kingsoft/mail/compose/SoftKeyboardUtil;
.super Ljava/lang/Object;
.source "SoftKeyboardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoftKeyboardUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static addOnSoftKeyBoardVisibleListener(Landroid/app/Activity;Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 12
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;

    invoke-direct {v2, v0, p1}, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;-><init>(Landroid/view/View;Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 29
    return-void
.end method
