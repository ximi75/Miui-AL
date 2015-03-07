.class Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->matchesFound(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

.field final synthetic val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

.field final synthetic val$temp:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V
    .locals 0

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    iput-object p2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$temp:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object p3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$temp:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$entry:Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 3061
    return-void
.end method
