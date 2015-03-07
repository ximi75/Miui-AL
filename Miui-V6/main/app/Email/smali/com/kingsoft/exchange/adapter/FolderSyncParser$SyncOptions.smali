.class Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/FolderSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncOptions"
.end annotation


# instance fields
.field private final mInterval:I

.field private final mLookback:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "lookback"    # I

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I

    .line 322
    iput p2, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(IILcom/kingsoft/exchange/adapter/FolderSyncParser$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/kingsoft/exchange/adapter/FolderSyncParser$1;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;

    .prologue
    .line 316
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;

    .prologue
    .line 316
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I

    return v0
.end method
