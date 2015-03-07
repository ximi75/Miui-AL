.class public Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;
.super Ljava/lang/Object;
.source "ChatCacheItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatCacheItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureSign"
.end annotation


# instance fields
.field mAttCllaps:Z

.field mIsLongClick:Z

.field mIsUserInfoCollaps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mIsUserInfoCollaps:Z

    return-void
.end method


# virtual methods
.method public isLongClick()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mIsLongClick:Z

    return v0
.end method

.method public isMattCllaps()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mAttCllaps:Z

    return v0
.end method

.method public isUserInfoCollaps()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mIsUserInfoCollaps:Z

    return v0
.end method

.method public setIsLongClick(Z)V
    .locals 0
    .param p1, "mIsLongClick"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mIsLongClick:Z

    .line 302
    return-void
.end method

.method public setIsUserInfoCollaps(Z)V
    .locals 0
    .param p1, "isUserInfoCollaps"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mIsUserInfoCollaps:Z

    .line 310
    return-void
.end method

.method public setMattCllaps(Z)V
    .locals 0
    .param p1, "mattCllaps"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->mAttCllaps:Z

    .line 294
    return-void
.end method
