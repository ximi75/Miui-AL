.class public final Lcom/kingsoft/mail/providers/UIProvider$AutoAdvance;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoAdvance"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x3

.field public static final LIST:I = 0x3

.field public static final NEWER:I = 0x2

.field public static final OLDER:I = 0x1

.field public static final UNSET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAdvanceInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "autoAdvanceSetting"    # Ljava/lang/String;

    .prologue
    .line 2293
    const-string/jumbo v1, "newer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    const/4 v0, 0x2

    .line 2303
    .local v0, "autoAdvance":I
    :goto_0
    return v0

    .line 2295
    .end local v0    # "autoAdvance":I
    :cond_0
    const-string/jumbo v1, "older"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2296
    const/4 v0, 0x1

    .restart local v0    # "autoAdvance":I
    goto :goto_0

    .line 2297
    .end local v0    # "autoAdvance":I
    :cond_1
    const-string/jumbo v1, "list"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2298
    const/4 v0, 0x3

    .restart local v0    # "autoAdvance":I
    goto :goto_0

    .line 2300
    .end local v0    # "autoAdvance":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "autoAdvance":I
    goto :goto_0
.end method
