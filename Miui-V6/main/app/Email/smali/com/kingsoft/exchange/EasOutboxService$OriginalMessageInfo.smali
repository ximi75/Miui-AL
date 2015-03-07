.class public Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
.super Ljava/lang/Object;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/EasOutboxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OriginalMessageInfo"
.end annotation


# instance fields
.field final mCollectionId:Ljava/lang/String;

.field final mItemId:Ljava/lang/String;

.field final mRefId:J


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "refId"    # J
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "collectionId"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-wide p1, p0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mRefId:J

    .line 223
    iput-object p3, p0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    .line 225
    return-void
.end method
