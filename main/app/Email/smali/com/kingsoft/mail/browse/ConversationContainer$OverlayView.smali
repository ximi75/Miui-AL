.class Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
.super Ljava/lang/Object;
.source "ConversationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayView"
.end annotation


# instance fields
.field itemType:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemType"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    .line 234
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->itemType:I

    .line 235
    return-void
.end method
