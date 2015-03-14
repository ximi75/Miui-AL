.class Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalSortKey"
.end annotation


# instance fields
.field final id:I

.field final sortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "sortName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->sortName:Ljava/lang/String;

    .line 567
    iput p2, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;->id:I

    .line 568
    return-void
.end method
