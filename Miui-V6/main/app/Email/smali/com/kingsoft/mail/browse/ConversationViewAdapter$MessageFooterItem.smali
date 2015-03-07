.class public Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;
.super Lcom/kingsoft/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageFooterItem"
.end annotation


# instance fields
.field private final mHeaderitem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V
    .locals 0
    .param p2, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p3, "x2"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "measureOnly"    # Z

    .prologue
    .line 310
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/browse/MessageFooterView;

    .line 311
    .local v0, "attachmentsView":Lcom/kingsoft/mail/browse/MessageFooterView;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$100(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p2}, Lcom/kingsoft/mail/browse/MessageFooterView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V

    .line 312
    return-void
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 302
    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MessageFooterView;

    .line 304
    .local v0, "v":Lcom/kingsoft/mail/browse/MessageFooterView;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$600(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$700(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->initialize(Landroid/app/LoaderManager;Landroid/app/FragmentManager;)V

    .line 305
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0x30

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x2

    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    return v0
.end method
