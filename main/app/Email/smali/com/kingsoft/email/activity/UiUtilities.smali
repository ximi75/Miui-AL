.class public Lcom/kingsoft/email/activity/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static checkView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-object p0
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 35
    .local v6, "res":Landroid/content/res/Resources;
    const-wide/16 v2, 0x400

    .line 36
    .local v2, "KB":J
    const-wide/32 v4, 0x100000

    .line 37
    .local v4, "MB":J
    const-wide/32 v0, 0x40000000

    .line 42
    .local v0, "GB":J
    const-wide/16 v9, 0x400

    cmp-long v9, p1, v9

    if-gez v9, :cond_0

    .line 43
    const v7, 0x7f0f0011

    .line 44
    .local v7, "resId":I
    long-to-int v8, p1

    .line 55
    .local v8, "value":I
    :goto_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 45
    .end local v7    # "resId":I
    .end local v8    # "value":I
    :cond_0
    const-wide/32 v9, 0x100000

    cmp-long v9, p1, v9

    if-gez v9, :cond_1

    .line 46
    const v7, 0x7f0f0013

    .line 47
    .restart local v7    # "resId":I
    const-wide/16 v9, 0x400

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8    # "value":I
    goto :goto_0

    .line 48
    .end local v7    # "resId":I
    .end local v8    # "value":I
    :cond_1
    const-wide/32 v9, 0x40000000

    cmp-long v9, p1, v9

    if-gez v9, :cond_2

    .line 49
    const v7, 0x7f0f0014

    .line 50
    .restart local v7    # "resId":I
    const-wide/32 v9, 0x100000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8    # "value":I
    goto :goto_0

    .line 52
    .end local v7    # "resId":I
    .end local v8    # "value":I
    :cond_2
    const v7, 0x7f0f0012

    .line 53
    .restart local v7    # "resId":I
    const-wide/32 v9, 0x40000000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8    # "value":I
    goto :goto_0
.end method

.method public static getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .param p2, "replaceZeroWithBlank"    # Z

    .prologue
    .line 60
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 61
    const-string/jumbo v0, ""

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_1

    .line 63
    const v0, 0x7f10027d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setVisibilitySafe(Landroid/app/Activity;II)V
    .locals 1
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kingsoft/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;I)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;II)V
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kingsoft/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 125
    return-void
.end method
