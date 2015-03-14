.class Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;
.super Lcom/kingsoft/ex/chips/RecipientEditTextView;
.source "ChipsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/ChipsTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseMockRecipientEditTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/ChipsTest;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    # setter for: Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;
    invoke-static {p1, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$002(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/text/util/Rfc822Tokenizer;)Landroid/text/util/Rfc822Tokenizer;

    .line 54
    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;
    invoke-static {p1}, Lcom/kingsoft/ex/chips/ChipsTest;->access$000(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/util/Rfc822Tokenizer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 55
    return-void
.end method


# virtual methods
.method getChipBackground(Lcom/kingsoft/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # invokes: Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$200(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x30

    return v0
.end method

.method public getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$100(Lcom/kingsoft/ex/chips/ChipsTest;)[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x64

    return v0
.end method
