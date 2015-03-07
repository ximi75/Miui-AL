.class Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;
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
    name = "PhoneRow"
.end annotation


# instance fields
.field phone:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_phone"    # Ljava/lang/String;
    .param p2, "_type"    # I

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    .line 784
    iput p2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    .line 785
    return-void
.end method


# virtual methods
.method public addValues(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .prologue
    .line 789
    const-string/jumbo v0, "data1"

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 790
    const-string/jumbo v0, "data2"

    iget v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 791
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .param p1, "_type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 795
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->type:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;->phone:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
