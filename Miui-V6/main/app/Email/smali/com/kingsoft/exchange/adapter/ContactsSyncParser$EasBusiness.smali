.class public final Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EasBusiness"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "data8"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/eas_business"

.field public static final CUSTOMER_ID:Ljava/lang/String; = "data6"

.field public static final GOVERNMENT_ID:Ljava/lang/String; = "data7"


# instance fields
.field accountName:Ljava/lang/String;

.field customerId:Ljava/lang/String;

.field governmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasData()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->customerId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->governmentId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
