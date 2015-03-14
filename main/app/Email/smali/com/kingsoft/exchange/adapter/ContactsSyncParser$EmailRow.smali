.class Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;
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
    name = "EmailRow"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "_email"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 738
    .local v1, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 739
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->email:Ljava/lang/String;

    .line 740
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->displayName:Ljava/lang/String;

    .line 746
    :goto_0
    return-void

    .line 742
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 743
    .local v0, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->email:Ljava/lang/String;

    .line 744
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->displayName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addValues(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .prologue
    .line 750
    const-string/jumbo v0, "data1"

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 751
    const-string/jumbo v0, "data4"

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 752
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;->email:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
