.class public Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordinatesCache"
.end annotation


# instance fields
.field private final mCoordinatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCoordinates(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public put(ILcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "coords"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    return-void
.end method
