.class Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFilterResult"
.end annotation


# instance fields
.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final entryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public final existingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final paramsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .local p2, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .local p3, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .local p4, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    .line 247
    iput-object p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    .line 248
    iput-object p3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    .line 249
    iput-object p4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    .line 250
    iput-object p5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    .line 251
    return-void
.end method
