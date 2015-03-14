.class Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$recipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2915
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2918
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2920
    .local v2, "replacements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2921
    .local v3, "temp":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v0, 0x0

    .line 2922
    .local v0, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/kingsoft/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v4, v4, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2926
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v5, v4, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-interface {v3}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/ex/chips/RecipientEntry;

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-static {v5, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$2900(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2930
    :cond_0
    if-eqz v0, :cond_1

    .line 2931
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v4, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3000(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2933
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2936
    .end local v0    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    .end local v3    # "temp":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v4, v5, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3100(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 2937
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unfoundAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2941
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2944
    .local v1, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2945
    .local v2, "temp":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v3, v3, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2948
    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2950
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-static {v3, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3000(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2952
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2955
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2959
    .end local v2    # "temp":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    # invokes: Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v3, v4, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3100(Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 2960
    return-void
.end method
