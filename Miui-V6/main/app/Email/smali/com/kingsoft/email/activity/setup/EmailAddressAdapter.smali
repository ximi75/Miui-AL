.class public Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;,
        Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;,
        Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mFilter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;-><init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mFilter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mFilter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$MyFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "holder":Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    if-nez p2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->simple_arrow_popup_item:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;

    .end local v0    # "holder":Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    invoke-direct {v0, p0, v3}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;-><init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;)V

    .line 61
    .restart local v0    # "holder":Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$102(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 62
    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x800013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    check-cast v0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;

    .line 68
    .restart local v0    # "holder":Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    # getter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "@@"

    const-string/jumbo v4, "@"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    # setter for: Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->position:I
    invoke-static {v0, p1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->access$202(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;I)I

    .line 71
    return-object p2
.end method
