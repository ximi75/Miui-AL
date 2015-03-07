.class Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BorderHeights"
.end annotation


# instance fields
.field public bottomHeight:I

.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

.field public topHeight:I


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1186
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    iput v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->topHeight:I

    .line 1188
    iput v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->bottomHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/MessageHeaderView;Lcom/kingsoft/mail/browse/MessageHeaderView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/MessageHeaderView$1;

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    return-void
.end method
