.class public abstract Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BaseFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter$FragmentCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CACHE_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private mFragmentCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 54
    iput-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 56
    new-instance v0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter$FragmentCache;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter$FragmentCache;-><init>(Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;I)V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    .line 59
    iput-object p1, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    move-object v0, p3

    .line 112
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 113
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 145
    iget-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 147
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 73
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 84
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    .line 86
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_1
    move-object v2, v0

    .line 101
    :goto_1
    return-object v2

    .line 88
    :cond_2
    invoke-virtual {p0, p2}, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 89
    if-nez v0, :cond_3

    .line 91
    const/4 v2, 0x0

    goto :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "root":Landroid/view/View;
    move-object v1, p1

    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 154
    if-ne v1, v0, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 158
    :goto_1
    return v2

    .line 153
    :cond_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "v":Landroid/view/ViewParent;
    goto :goto_0

    .line 158
    .end local v1    # "v":Landroid/view/ViewParent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "index"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 168
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 128
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 135
    :cond_1
    iput-object v0, p0, Lcom/kingsoft/ex/photo/adapters/BaseFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 138
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 69
    return-void
.end method
