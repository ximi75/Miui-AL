.class Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 3025
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p2, "x1"    # Lcom/kingsoft/ex/chips/RecipientEditTextView$1;

    .prologue
    .line 3025
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3025
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 3032
    .local p1, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 3033
    .local v4, "originalRecipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 3036
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3037
    .local v2, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 3038
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3035
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3041
    .end local v2    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .line 3042
    .local v0, "adapter":Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    new-instance v7, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v7, p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;Ljava/util/ArrayList;)V

    invoke-static {v6, v0, v1, v5, v7}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 3073
    const/4 v5, 0x0

    return-object v5
.end method
