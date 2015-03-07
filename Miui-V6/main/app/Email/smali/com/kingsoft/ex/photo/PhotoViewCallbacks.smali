.class public interface abstract Lcom/kingsoft/ex/photo/PhotoViewCallbacks;
.super Ljava/lang/Object;
.source "PhotoViewCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;,
        Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    }
.end annotation


# static fields
.field public static final BITMAP_LOADER_AVATAR:I = 0x1

.field public static final BITMAP_LOADER_PHOTO:I = 0x3

.field public static final BITMAP_LOADER_THUMBNAIL:I = 0x2


# virtual methods
.method public abstract addCursorListener(Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
.end method

.method public abstract addScreenListener(ILcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;)V
.end method

.method public abstract getAdapter()Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;
.end method

.method public abstract isFragmentActive(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCursorChanged(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V
.end method

.method public abstract onFragmentPhotoLoadComplete(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;Z)V
.end method

.method public abstract onFragmentVisible(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;)V
.end method

.method public abstract onNewPhotoLoaded(I)V
.end method

.method public abstract removeCursorListener(Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
.end method

.method public abstract removeScreenListener(I)V
.end method

.method public abstract setViewActivated(I)V
.end method

.method public abstract toggleFullScreen()V
.end method
