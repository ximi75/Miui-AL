.class Lcom/kingsoft/ex/chips/RecipientEditTextView$2;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$2;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$2;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handlePendingChips()V

    .line 250
    return-void
.end method
