.class public Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
.super Ljava/lang/Object;
.source "PhotoBitmapLoaderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapResult"
.end annotation


# static fields
.field public static final STATUS_EXCEPTION:I = 0x1

.field public static final STATUS_SUCCESS:I


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
