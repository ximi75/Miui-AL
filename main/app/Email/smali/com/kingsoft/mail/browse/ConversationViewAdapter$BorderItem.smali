.class public Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
.super Lcom/kingsoft/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BorderItem"
.end annotation


# instance fields
.field private final mContiguous:Z

.field private mExpanded:Z

.field private final mFirstBorder:Z

.field private mLastBorder:Z

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;ZZZZ)V
    .locals 0
    .param p2, "contiguous"    # Z
    .param p3, "isExpanded"    # Z
    .param p4, "firstBorder"    # Z
    .param p5, "lastBorder"    # Z

    .prologue
    .line 403
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;-><init>()V

    .line 404
    iput-boolean p2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mContiguous:Z

    .line 405
    iput-boolean p3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    .line 406
    iput-boolean p4, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mFirstBorder:Z

    .line 407
    iput-boolean p5, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    .line 408
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "measureOnly"    # Z

    .prologue
    .line 422
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/browse/BorderView;

    .line 423
    .local v0, "border":Lcom/kingsoft/mail/browse/BorderView;
    invoke-virtual {v0, p0, p2}, Lcom/kingsoft/mail/browse/BorderView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;Z)V

    .line 424
    return-void
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 417
    const v0, 0x7f040037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x4

    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mContiguous:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    return v0
.end method

.method public isFirstBorder()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mFirstBorder:Z

    return v0
.end method

.method public isLastBorder()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    return v0
.end method

.method public rebindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->bindView(Landroid/view/View;Z)V

    .line 464
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mExpanded:Z

    .line 438
    return-void
.end method

.method public setIsLastBorder(Z)V
    .locals 0
    .param p1, "isLastBorder"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->mLastBorder:Z

    .line 455
    return-void
.end method
