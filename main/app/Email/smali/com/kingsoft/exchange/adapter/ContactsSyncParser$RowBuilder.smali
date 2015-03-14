.class Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowBuilder"
.end annotation


# instance fields
.field builder:Landroid/content/ContentProviderOperation$Builder;

.field cv:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .param p1, "_builder"    # Landroid/content/ContentProviderOperation$Builder;

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 812
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V
    .locals 1
    .param p1, "_builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p2, "_ncv"    # Landroid/content/Entity$NamedContentValues;

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 816
    iget-object v0, p2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 817
    return-void
.end method


# virtual methods
.method build()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 830
    return-object p0
.end method

.method withValueBackReference(Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "previousResult"    # I

    .prologue
    .line 820
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 821
    return-object p0
.end method
