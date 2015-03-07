.class Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;
.super Lcom/kingsoft/common/widget/GroupingListAdapter;
.source "GroupingListAdapterTests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/common/widget/GroupingListAdapterTests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/common/widget/GroupingListAdapterTests;


# direct methods
.method constructor <init>(Lcom/kingsoft/common/widget/GroupingListAdapterTests;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;->this$0:Lcom/kingsoft/common/widget/GroupingListAdapterTests;

    invoke-direct {p0, p2}, Lcom/kingsoft/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addGroups(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 55
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 56
    .local v0, "count":I
    const/4 v2, 0x1

    .line 57
    .local v2, "groupItemCount":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "currentValue":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 61
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 59
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    if-le v2, v6, :cond_1

    .line 66
    sub-int v5, v3, v2

    invoke-virtual {p0, v5, v2, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;->addGroup(IIZ)V

    .line 69
    :cond_1
    const/4 v2, 0x1

    .line 70
    move-object v1, v4

    goto :goto_1

    .line 73
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    if-le v2, v6, :cond_3

    .line 74
    sub-int v5, v0, v2

    invoke-virtual {p0, v5, v2, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;->addGroup(IIZ)V

    .line 76
    :cond_3
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 80
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z

    .prologue
    .line 85
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    return-void
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
