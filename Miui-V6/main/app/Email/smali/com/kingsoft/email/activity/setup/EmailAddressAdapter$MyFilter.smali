.class Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;
.super Landroid/widget/Filter;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;-><init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 92
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->access$400(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->access$402(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Ljava/util/List;)Ljava/util/List;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->access$400(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->access$400(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 95
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 101
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmailAddressAdapter"

    const-string/jumbo v2, "the pop view has removed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
