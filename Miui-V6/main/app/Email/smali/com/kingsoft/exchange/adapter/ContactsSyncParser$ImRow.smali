.class Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"

# interfaces
.implements Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImRow"
.end annotation


# instance fields
.field im:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "_im"    # Ljava/lang/String;

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    .line 765
    return-void
.end method


# virtual methods
.method public addValues(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .prologue
    .line 769
    const-string/jumbo v0, "data1"

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 770
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;->im:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
