.class public Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
.super Ljava/lang/Object;
.source "ConversationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayPosition"
.end annotation


# instance fields
.field public final bottom:I

.field public final top:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    .line 224
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    .line 225
    return-void
.end method
