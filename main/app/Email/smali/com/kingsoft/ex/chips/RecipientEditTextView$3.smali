.class Lcom/kingsoft/ex/chips/RecipientEditTextView$3;
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
    .line 254
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$3;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$3;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView;->shrink()V
    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$200(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 259
    return-void
.end method
