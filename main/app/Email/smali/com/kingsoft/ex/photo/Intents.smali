.class public Lcom/kingsoft/ex/photo/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/Intents$1;,
        Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION_BAR_HIDDEN_INITIALLY:Ljava/lang/String; = "action_bar_hidden_initially"

.field public static final EXTRA_ANIMATION_START_HEIGHT:Ljava/lang/String; = "start_height_extra"

.field public static final EXTRA_ANIMATION_START_WIDTH:Ljava/lang/String; = "start_width_extra"

.field public static final EXTRA_ANIMATION_START_X:Ljava/lang/String; = "start_x_extra"

.field public static final EXTRA_ANIMATION_START_Y:Ljava/lang/String; = "start_y_extra"

.field public static final EXTRA_DISPLAY_THUMBS_FULLSCREEN:Ljava/lang/String; = "display_thumbs_fullscreen"

.field public static final EXTRA_INITIAL_PHOTO_URI:Ljava/lang/String; = "initial_photo_uri"

.field public static final EXTRA_MAX_INITIAL_SCALE:Ljava/lang/String; = "max_scale"

.field public static final EXTRA_PHOTOS_URI:Ljava/lang/String; = "photos_uri"

.field public static final EXTRA_PHOTO_INDEX:Ljava/lang/String; = "photo_index"

.field public static final EXTRA_PROJECTION:Ljava/lang/String; = "projection"

.field public static final EXTRA_RESOLVED_PHOTO_URI:Ljava/lang/String; = "resolved_photo_uri"

.field public static final EXTRA_SCALE_UP_ANIMATION:Ljava/lang/String; = "scale_up_animation"

.field public static final EXTRA_THUMBNAIL_URI:Ljava/lang/String; = "thumbnail_uri"

.field public static final EXTRA_WATCH_NETWORK:Ljava/lang/String; = "watch_network"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    const-class v1, Lcom/kingsoft/ex/photo/PhotoViewActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/kingsoft/ex/photo/Intents$1;)V

    return-object v0
.end method

.method public static newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    const-class v1, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/kingsoft/ex/photo/Intents$1;)V

    return-object v0
.end method

.method public static newPhotoViewIntentBuilder(Landroid/content/Context;Ljava/lang/Class;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/kingsoft/ex/photo/Intents$1;)V

    return-object v0
.end method
