.class Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneInfo"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;

    .line 599
    iput p2, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mType:I

    .line 600
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$1;

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;

    .prologue
    .line 593
    iget v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mType:I

    return v0
.end method
