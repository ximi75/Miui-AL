.class Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;
.super Landroid/text/style/ImageSpan;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreImageSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3083
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .line 3084
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 3085
    return-void
.end method
