.class Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 2845
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p2, "x1"    # Lcom/kingsoft/ex/chips/RecipientEditTextView$1;

    .prologue
    .line 2845
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 2845
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 2845
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private createFreeChip(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 6
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 2848
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2400(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2855
    :goto_0
    return-object v1

    .line 2851
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v2, p1, v3, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2500(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2853
    :catch_0
    move-exception v0

    .line 2854
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private processReplacements(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2967
    .local p1, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    .local p2, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2968
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$2;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3016
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 3017
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3022
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 3019
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$500(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2845
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2890
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2700(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2891
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2700(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->cancel(Z)Z

    .line 2896
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2898
    .local v5, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2899
    .local v3, "existingChips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 2900
    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2899
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2902
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2903
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2905
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2907
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 2908
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2909
    .local v2, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_3

    .line 2910
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2907
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2913
    .end local v2    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .line 2914
    .local v0, "adapter":Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    new-instance v8, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v8, p0, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V

    invoke-static {v6, v0, v1, v7, v8}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 2962
    const/4 v6, 0x0

    return-object v6
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    .line 2863
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2865
    .local v4, "originalRecipients":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 2866
    .local v1, "existingChips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 2867
    aget-object v6, v1, v2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2869
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2870
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2873
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2876
    .local v5, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2877
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/kingsoft/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 2879
    invoke-interface {v0}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2881
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2885
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    .line 2886
    return-void
.end method
