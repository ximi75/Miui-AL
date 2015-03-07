.class Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    .line 577
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 578
    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;)I
    .locals 4
    .param p1, "lhs"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;
    .param p2, "rhs"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    .prologue
    .line 582
    iget-object v1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;->collator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    iget-object v3, p2, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 583
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 589
    .end local v0    # "res":I
    :goto_0
    return v0

    .line 586
    .restart local v0    # "res":I
    :cond_0
    iget v1, p1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    iget v2, p2, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    if-eq v1, v2, :cond_2

    .line 587
    iget v1, p1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    iget v2, p2, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 589
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 571
    check-cast p1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;->compare(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;)I

    move-result v0

    return v0
.end method
