.class public Lcom/kingsoft/bitmap/ReusableBitmap;
.super Ljava/lang/Object;
.source "ReusableBitmap.java"

# interfaces
.implements Lcom/kingsoft/bitmap/Poolable;


# instance fields
.field public final bmp:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mOrientation:I

.field private mRefCount:I

.field private final mReusable:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reusable"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    .line 40
    iput-object p1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean p2, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mReusable:Z

    .line 42
    return-void
.end method


# virtual methods
.method public acquireReference()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    .line 80
    return-void
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method public getLogicalHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mHeight:I

    return v0
.end method

.method public getLogicalWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mWidth:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mOrientation:I

    return v0
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    return v0
.end method

.method public isEligibleForPooling()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mReusable:Z

    return v0
.end method

.method public releaseReference()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    .line 88
    return-void
.end method

.method public setLogicalHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mHeight:I

    .line 55
    return-void
.end method

.method public setLogicalWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mWidth:I

    .line 51
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mOrientation:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, " refCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, " mReusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mReusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, " bmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, " logicalW/H="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    shr-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
