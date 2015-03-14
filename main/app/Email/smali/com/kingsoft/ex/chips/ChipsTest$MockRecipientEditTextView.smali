.class Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
.super Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;
.source "ChipsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/ChipsTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MockRecipientEditTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/ChipsTest;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;-><init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v0}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    # setter for: Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;
    invoke-static {p1, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$002(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/text/util/Rfc822Tokenizer;)Landroid/text/util/Rfc822Tokenizer;

    .line 83
    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;
    invoke-static {p1}, Lcom/kingsoft/ex/chips/ChipsTest;->access$000(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/util/Rfc822Tokenizer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 84
    return-void
.end method


# virtual methods
.method getChipBackground(Lcom/kingsoft/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # invokes: Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$200(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x30

    return v0
.end method

.method public getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$100(Lcom/kingsoft/ex/chips/ChipsTest;)[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method public getSpannable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getSpannable()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x64

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    # getter for: Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;
    invoke-static {v0}, Lcom/kingsoft/ex/chips/ChipsTest;->access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
