.class public Lcom/kingsoft/mail/ui/SecureConversationViewController;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;,
        Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;,
        Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;,
        Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;
    }
.end annotation


# static fields
.field private static final CSP_META:Ljava/lang/String; = "<meta http-equiv=\"content-security-policy\" content=\"script-src file:\"><meta http-equiv=\"X-WebKit-CSP\" content=\"script-src file:\">"

.field private static final DATA_CHG_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureConversationViewController"


# instance fields
.field private ad:Lcom/kingsoft/mail/compose/AnswerDialog;

.field private btn_send_quick_reply:Landroid/widget/ImageView;

.field private divider:Landroid/view/View;

.field private downX:F

.field private downY:F

.field public et_quick_reply:Landroid/widget/EditText;

.field private isBodyLoaded:Z

.field private isEmpty:Z

.field private ll:Landroid/widget/LinearLayout;

.field private loadedMessageID:J

.field private mAttachmentLock:Ljava/lang/Object;

.field private final mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

.field private mCc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mConversationHeaderView:Lcom/kingsoft/mail/browse/ConversationViewHeader;

.field private mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

.field private mDraftUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

.field private mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

.field private mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

.field private mMessageInviteView:Lcom/kingsoft/mail/browse/MessageInviteView;

.field private mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

.field private mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

.field private mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

.field private mScrollView:Lcom/kingsoft/mail/browse/MessageScrollView;

.field public mShouldRender:Z

.field private mSideMarginInWebPx:I

.field private mTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

.field mchgHandler:Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;

.field private moreIv:Landroid/widget/ImageView;

.field private moreOp:Landroid/widget/GridView;

.field private qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

.field private upX:F

.field private upY:F


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mTo:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCc:Ljava/util/List;

    .line 196
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->loadedMessageID:J

    .line 201
    iput v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downX:F

    .line 202
    iput v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downY:F

    .line 203
    iput v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upX:F

    .line 204
    iput v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upY:F

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->isBodyLoaded:Z

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mShouldRender:Z

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mAttachmentLock:Ljava/lang/Object;

    .line 1557
    new-instance v0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mchgHandler:Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;

    .line 214
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->btn_send_quick_reply:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p1, "x1"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->reply()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->replyAll()V

    return-void
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->forward()V

    return-void
.end method

.method static synthetic access$1400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moveTo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->star()V

    return-void
.end method

.method static synthetic access$1600(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->unread()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReply()V

    return-void
.end method

.method static synthetic access$1800(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->delete()V

    return-void
.end method

.method static synthetic access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/MessageWebView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReplyMail()V

    return-void
.end method

.method static synthetic access$2200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/compose/AnswerDialog;)Lcom/kingsoft/mail/compose/AnswerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p1, "x1"    # Lcom/kingsoft/mail/compose/AnswerDialog;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->invalidateBodyView()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mAttachmentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downX:F

    return v0
.end method

.method static synthetic access$702(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p1, "x1"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downX:F

    return p1
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downY:F

    return v0
.end method

.method static synthetic access$802(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p1, "x1"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->downY:F

    return p1
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .prologue
    .line 148
    iget v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upX:F

    return v0
.end method

.method static synthetic access$902(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .param p1, "x1"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->upX:F

    return p1
.end method

.method private addAddressToList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1227
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1239
    :cond_0
    return-void

    .line 1230
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1232
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1234
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "emailAdd":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1236
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1127
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCc:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1130
    return-void

    .line 1127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addRecipients(Ljava/util/Set;[Ljava/lang/String;)V
    .locals 8
    .param p2, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1179
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1182
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, "recipientAddress":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1185
    const-string/jumbo v5, "\"\""

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\t"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1188
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "recipientAddress":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addToAddresses(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mTo:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V

    .line 1207
    return-void
.end method

.method private containAddress(Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1242
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return v6

    .line 1246
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v2

    .line 1247
    .local v2, "newAdd":Lcom/kingsoft/mail/providers/Address;
    if-eqz v2, :cond_0

    .line 1251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1252
    .local v0, "add":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v4

    .line 1253
    .local v4, "oldAdd":Lcom/kingsoft/mail/providers/Address;
    if-eqz v4, :cond_2

    .line 1257
    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, "oldAddEmail":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1263
    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, "newAddEmail":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1265
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private dealWithHtmlBody(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .param p1, "htmlContent"    # Ljava/lang/StringBuilder;

    .prologue
    .line 987
    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 988
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 989
    .local v5, "widthPixels":I
    new-instance v2, Lcom/kingsoft/mail/browse/MessageWebViewController;

    const/high16 v6, 0x3f800000

    invoke-direct {v2, v6, v5, v5}, Lcom/kingsoft/mail/browse/MessageWebViewController;-><init>(FII)V

    .line 990
    .local v2, "mController":Lcom/kingsoft/mail/browse/MessageWebViewController;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v7}, Lcom/kingsoft/mail/browse/MessageWebViewController;->getHtmlContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .end local p1    # "htmlContent":Ljava/lang/StringBuilder;
    .local v1, "htmlContent":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 993
    .local v0, "content":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getSearchFilter()Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, "searchFilter":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1000
    .end local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private delete()V
    .locals 14

    .prologue
    const v13, 0x7f0c026d

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1412
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v10}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1413
    .local v3, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1414
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v10

    iget-object v4, v10, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 1415
    .local v4, "settings":Lcom/kingsoft/mail/providers/Settings;
    if-eqz v4, :cond_1

    iget-boolean v10, v4, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    if-eqz v10, :cond_1

    move v5, v8

    .line 1416
    .local v5, "showDialog":Z
    :goto_0
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 1417
    .local v6, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v7

    .line 1418
    .local v7, "updater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    const v0, 0x7f0c026d

    .line 1419
    .local v0, "action":I
    if-eqz v5, :cond_2

    .line 1420
    invoke-interface {v7, v13, v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->makeDialogListener(IZ)V

    .line 1421
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0f0002

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->newInstance(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    move-result-object v1

    .line 1424
    .local v1, "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->displayDialog(Landroid/app/FragmentManager;)V

    .line 1431
    .end local v0    # "action":I
    .end local v1    # "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v4    # "settings":Lcom/kingsoft/mail/providers/Settings;
    .end local v5    # "showDialog":Z
    .end local v6    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .end local v7    # "updater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    :cond_0
    :goto_1
    return-void

    .restart local v4    # "settings":Lcom/kingsoft/mail/providers/Settings;
    :cond_1
    move v5, v9

    .line 1415
    goto :goto_0

    .line 1427
    .restart local v0    # "action":I
    .restart local v5    # "showDialog":Z
    .restart local v6    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .restart local v7    # "updater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    :cond_2
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v11, v11, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v10, v11, v12, v8}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->moveCacheItem(Landroid/content/Context;JZ)V

    .line 1428
    invoke-interface {v7, v13, v6, v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v8

    invoke-interface {v7, v9, v6, v8, v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto :goto_1
.end method

.method private enableInlineOperations(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 808
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 809
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/ui/SecureConversationViewController$1;)V

    const-string/jumbo v2, "imagelongclicklistener"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/MessageWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private forward()V
    .locals 4

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1389
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->forward(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 1392
    :cond_0
    return-void
.end method

.method private generateReplyToAllAddresses()[Ljava/lang/String;
    .locals 17

    .prologue
    .line 825
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v15}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v13

    .line 826
    .local v13, "strFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v15}, Lcom/kingsoft/mail/browse/ConversationMessage;->getTo()Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, "strTo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v15}, Lcom/kingsoft/mail/browse/ConversationMessage;->getCc()Ljava/lang/String;

    move-result-object v12

    .line 828
    .local v12, "strCC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v15}, Lcom/kingsoft/mail/browse/ConversationMessage;->getBcc()Ljava/lang/String;

    move-result-object v11

    .line 832
    .local v11, "strBcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v15}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v15

    invoke-interface {v15}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 833
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, "myself_address":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 837
    .local v9, "strAll":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 838
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 841
    :cond_0
    if-eqz v11, :cond_1

    .line 842
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 845
    :cond_1
    invoke-static {v9}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 846
    .local v10, "strAllReceivers":Ljava/lang/String;
    const-string/jumbo v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, "arrayAllReceivers":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 849
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v2, v4

    .line 855
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 849
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 862
    .end local v8    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    check-cast v15, [Ljava/lang/String;

    return-object v15
.end method

.method private getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "showToast"    # Z

    .prologue
    const/4 v2, 0x0

    const v7, 0x7f10019c

    const/4 v6, 0x0

    .line 1308
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v3

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 1309
    .local v1, "reAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 1310
    :cond_0
    if-eqz p2, :cond_1

    .line 1311
    invoke-static {p1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1330
    :cond_1
    :goto_0
    return-object v2

    .line 1316
    :cond_2
    iget-object v3, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x10000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1318
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 1319
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 1320
    const v3, 0x7f10019c

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_1

    .line 1325
    invoke-static {p1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v2, v1

    .line 1330
    goto :goto_0
.end method

.method private hightLightSearchItems(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "body"    # Ljava/lang/StringBuffer;
    .param p2, "searchFilter"    # Ljava/lang/String;

    .prologue
    .line 1505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    invoke-static {p1, p2}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->highlightTermsInHtml(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateBodyView()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 1560
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 1561
    .local v6, "body":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1562
    .local v7, "dataBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mShouldRender:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mShouldRender:Z

    .line 1565
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->enableInlineOperations(Z)V

    .line 1568
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1569
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dealWithHtmlBody(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/browse/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/kingsoft/mail/providers/Message;->shouldShowImagePrompt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showImagePromptOnce()V

    .line 1594
    :cond_1
    return-void

    .line 1563
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveTo()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1369
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1370
    .local v8, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/MailActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->getInstance(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;Z)Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    move-result-object v7

    .line 1374
    .local v7, "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    if-eqz v7, :cond_0

    .line 1375
    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->show()V

    .line 1378
    .end local v7    # "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    :cond_0
    return-void
.end method

.method private quickReply()V
    .locals 15

    .prologue
    .line 1434
    const/4 v7, 0x0

    .line 1435
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1437
    .local v12, "quickRes":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v6

    .line 1438
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->ACCOUNT_ID_URI:Landroid/net/Uri;

    iget-object v2, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1439
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "quickResponse"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1440
    const/4 v13, 0x0

    .line 1441
    .local v13, "size":I
    if-eqz v7, :cond_0

    .line 1442
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1443
    if-nez v13, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f100105

    invoke-static {v0, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1447
    :cond_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1448
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v12, v0, [Ljava/lang/String;

    .line 1449
    const-string/jumbo v0, "quickResponse"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1450
    .local v10, "index":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_1

    .line 1451
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v9

    .line 1452
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1450
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1454
    :cond_1
    move-object v14, v12

    .line 1455
    .local v14, "source":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1456
    new-instance v11, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;

    invoke-direct {v11, p0, v14}, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;[Ljava/lang/String;)V

    .line 1486
    .local v11, "oicl":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/kingsoft/mail/compose/AnswerDialog;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/compose/AnswerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    .line 1487
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/AnswerDialog;->setActivity(Landroid/app/Activity;)V

    .line 1488
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->show()V

    .line 1489
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    const v2, 0x7f10030d

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/AnswerDialog;->setTitleText(I)V

    .line 1490
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->setButtonPanelDismiss()V

    .line 1491
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;

    invoke-virtual {v0, v14, v11}, Lcom/kingsoft/mail/compose/AnswerDialog;->setItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    .end local v9    # "i":I
    .end local v10    # "index":I
    .end local v11    # "oicl":Landroid/widget/AdapterView$OnItemClickListener;
    .end local v14    # "source":[Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 1497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1500
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v13    # "size":I
    :cond_3
    :goto_1
    return-void

    .line 1493
    :catch_0
    move-exception v8

    .line 1494
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "------>quickReply"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1496
    if-eqz v7, :cond_3

    .line 1497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1496
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private quickReplyMail()V
    .locals 6

    .prologue
    .line 814
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->btn_send_quick_reply:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    .line 815
    .local v3, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->createQuickReplyMessage(Landroid/content/Context;ZLandroid/widget/EditText;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/os/Handler;)V

    .line 817
    return-void
.end method

.method private reply()V
    .locals 4

    .prologue
    .line 1381
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1382
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->reply(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 1385
    :cond_0
    return-void
.end method

.method private replyAll()V
    .locals 4

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getAccount(Landroid/content/Context;Z)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1363
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->replyAll(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 1366
    :cond_0
    return-void
.end method

.method private setQuickReplyCache()V
    .locals 5

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    const/4 v1, 0x0

    .line 1028
    .local v1, "quickCache":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    .line 1030
    .local v0, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .end local v0    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private star()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1395
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1396
    .local v1, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v6, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v7, v3, v2}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCacheStatus(Landroid/content/Context;JIZ)Z

    .line 1398
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/MailActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v0

    .line 1399
    .local v0, "mUpdater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const-string/jumbo v6, "starred"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v0, v5, v6, v2}, Lcom/kingsoft/mail/ui/ConversationUpdater;->updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 1401
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v5

    iget-boolean v5, v5, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-nez v5, :cond_3

    :goto_2
    iput-boolean v3, v2, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 1403
    .end local v0    # "mUpdater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 1397
    goto :goto_0

    .restart local v0    # "mUpdater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    :cond_2
    move v2, v4

    .line 1399
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1401
    goto :goto_2
.end method

.method private unread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1406
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v1, v2, v3, v4, v4}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCacheStatus(Landroid/content/Context;JIZ)Z

    .line 1407
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1408
    .local v0, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->markUnread()V

    .line 1409
    return-void
.end method


# virtual methods
.method addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-direct {p0, v0, p2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addAddressToList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1223
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_2

    .line 1138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 1139
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 1140
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, p3, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1142
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    invoke-static {p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 1148
    .local v1, "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 1149
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 1150
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .restart local v0    # "address":Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1154
    invoke-direct {p0, p3, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1155
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1161
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    return-void
.end method

.method public dismissLoadingStatus()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismissLoadingStatus()V

    .line 876
    return-void
.end method

.method public downloadInlineImage(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "bodyHtml"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 910
    invoke-static {p2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->hasUnloadedInlineImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 912
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 914
    .local v2, "networkType":I
    const-string/jumbo v4, "<img[^>]*src=\"cid(?-i):([^\"]*)\""

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 917
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 919
    .local v1, "match":Ljava/util/regex/Matcher;
    if-ne v2, v6, :cond_2

    .line 920
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    .line 936
    .end local v1    # "match":Ljava/util/regex/Matcher;
    .end local v2    # "networkType":I
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-void

    .line 932
    .local v0, "contentUri":Ljava/lang/String;
    .restart local v1    # "match":Ljava/util/regex/Matcher;
    .restart local v2    # "networkType":I
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    :cond_1
    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/ui/SecureConversationViewController$1;)V

    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->downloadInlineWithContentId(Ljava/lang/String;)V

    .line 923
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .restart local v0    # "contentUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 928
    if-ne v2, v6, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 15

    .prologue
    .line 1597
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getInitialConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v11

    .line 1598
    .local v11, "initialConversation":Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1599
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-wide v1, v11, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 1600
    .local v12, "messageKey":Ljava/lang/String;
    const-string/jumbo v6, "messageKey=?"

    .line 1601
    .local v6, "WHERE_MESSAGE_KEY":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 1602
    .local v8, "bodyHtml":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1603
    .local v9, "bodyText":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 1605
    .local v7, "body":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/kingsoft/email/EmailApplication;->getBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/EmailContent$Body;

    .line 1606
    .local v13, "msgBody":Lcom/android/emailcommon/provider/EmailContent$Body;
    if-eqz v13, :cond_3

    .line 1607
    iget-object v8, v13, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1608
    iget-object v9, v13, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 1609
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/kingsoft/email/EmailApplication;->clearBody(Ljava/lang/String;)V

    .line 1630
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1631
    move-object v7, v8

    .line 1638
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v1, :cond_2

    .line 1639
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mAttachmentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1640
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iput-object v8, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    .line 1641
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1642
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iput-object v9, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyText:Ljava/lang/String;

    .line 1644
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->isBodyLoaded:Z

    .line 1645
    return-object v7

    .line 1611
    :cond_3
    const/4 v10, 0x0

    .line 1613
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1618
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1619
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1620
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 1623
    :cond_4
    if-eqz v10, :cond_0

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1623
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 1624
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 1632
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1633
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1634
    .local v14, "spannable":Landroid/text/SpannableString;
    const/16 v1, 0xf

    invoke-static {v14, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1635
    invoke-static {v14}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1641
    .end local v14    # "spannable":Landroid/text/SpannableString;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getConversationHeaderView()Lcom/kingsoft/mail/browse/ConversationViewHeader;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/kingsoft/mail/browse/ConversationViewHeader;

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    return-object v0
.end method

.method public getMessageTransforms(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 977
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMoreOp()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    return-object v0
.end method

.method public getmDraftUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mDraftUri:Landroid/net/Uri;

    return-object v0
.end method

.method initReplyRecipients(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 10
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1091
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, "sentToAddresses":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getReplyToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v4

    .line 1095
    .local v4, "replyToAddresses":[Ljava/lang/String;
    array-length v8, v4

    if-lez v8, :cond_2

    aget-object v3, v4, v9

    .line 1097
    .local v3, "replyToAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getFromAddressesUnescaped()[Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, "fromAddresses":[Ljava/lang/String;
    array-length v8, v2

    if-lez v8, :cond_3

    aget-object v1, v2, v9

    .line 1102
    .local v1, "fromAddress":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1103
    move-object v3, v1

    .line 1110
    :cond_0
    if-nez p2, :cond_4

    .line 1111
    invoke-virtual {p0, v1, v3, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 1113
    .local v6, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addToAddresses(Ljava/util/Collection;)V

    .line 1123
    .end local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .end local v1    # "fromAddress":Ljava/lang/String;
    .end local v2    # "fromAddresses":[Ljava/lang/String;
    .end local v3    # "replyToAddress":Ljava/lang/String;
    :cond_2
    move-object v3, v7

    .line 1095
    goto :goto_0

    .restart local v2    # "fromAddresses":[Ljava/lang/String;
    .restart local v3    # "replyToAddress":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 1098
    goto :goto_1

    .line 1114
    .restart local v1    # "fromAddress":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    .line 1115
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1116
    .local v0, "ccAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 1118
    .restart local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v6, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addRecipients(Ljava/util/Set;[Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addToAddresses(Ljava/util/Collection;)V

    .line 1120
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addRecipients(Ljava/util/Set;[Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0, v0, v6}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method protected initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "fullSenderAddress"    # Ljava/lang/String;
    .param p2, "replyToAddress"    # Ljava/lang/String;
    .param p3, "inToAddresses"    # [Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1281
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 1282
    .local v4, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1283
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_0
    :goto_0
    return-object v4

    .line 1288
    :cond_1
    array-length v5, p3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p3, v7

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1291
    aget-object v5, p3, v7

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1298
    :cond_2
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1299
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1300
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->isEmpty:Z

    return v0
.end method

.method public isTextEmpty()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1334
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1337
    :try_start_0
    const-string/jumbo v4, "^[\u3000*| *| *|\\s*]*"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[\u3000*| *| *|\\s*]*$"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1340
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->isEmpty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :goto_0
    return v2

    .line 1343
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SecureConversationViewController"

    const-string/jumbo v4, "uiSaveDraftMessage - zhoujianfeng"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 1350
    goto :goto_0

    .line 1347
    :cond_1
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->isEmpty:Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 367
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 368
    .local v3, "fragment":Landroid/app/Fragment;
    new-instance v8, Lcom/kingsoft/mail/FormattedDateBuilder;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/kingsoft/mail/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    .line 370
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/kingsoft/mail/browse/ConversationViewHeader;

    invoke-interface {v8, v9}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->setupConversationHeaderView(Lcom/kingsoft/mail/browse/ConversationViewHeader;)V

    .line 372
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v10}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getAddressCache()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/kingsoft/mail/browse/MessageHeaderView;->initialize(Lcom/kingsoft/mail/browse/ConversationAccountController;Ljava/util/Map;)V

    .line 375
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v8, v11}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpandMode(I)V

    .line 376
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getContactInfoSource()Lcom/kingsoft/mail/ContactInfoSource;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setContactInfoSource(Lcom/kingsoft/mail/ContactInfoSource;)V

    .line 378
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v8, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setCallbacks(Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 379
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v8, v11}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpandable(Z)V

    .line 380
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->isViewOnlyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setViewOnlyMode(Z)V

    .line 381
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-interface {v8, v9}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->setupMessageHeaderVeiledMatcher(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 383
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v2

    .line 384
    .local v2, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v8, v2, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v8, :cond_0

    move-object v8, v2

    .line 385
    check-cast v8, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v5

    .line 386
    .local v5, "mConversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    iget-wide v9, v5, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 387
    .local v6, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    const/4 v9, 0x1

    invoke-static {v6, v8, v9, v11}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->newMessageHeaderItem2(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/FormattedDateBuilder;ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v4

    .line 390
    .local v4, "item":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v8}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 391
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v8, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V

    .line 396
    .end local v4    # "item":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .end local v5    # "mConversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getContactInfoSource()Lcom/kingsoft/mail/ContactInfoSource;

    move-result-object v8

    invoke-static {v8}, Lcom/kingsoft/mail/ui/MailActionBarView;->setContactInfoUri(Lcom/kingsoft/mail/ContactInfoSource;)V

    .line 399
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

    invoke-virtual {v3}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/kingsoft/mail/browse/MessageFooterView;->initialize(Landroid/app/LoaderManager;Landroid/app/FragmentManager;)V

    .line 403
    instance-of v8, v2, Lcom/kingsoft/mail/browse/EmlViewerActivity;

    if-eqz v8, :cond_1

    .line 404
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->startMessageLoader()V

    .line 407
    :cond_1
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 408
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x7f0d00a8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mSideMarginInWebPx:I

    .line 412
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 413
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    instance-of v8, v1, Lcom/kingsoft/mail/ui/MailActivity;

    if-eqz v8, :cond_2

    .line 414
    check-cast v1, Lcom/kingsoft/mail/ui/MailActivity;

    .end local v1    # "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActivity;->getmController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 415
    .local v0, "aac":Lcom/kingsoft/mail/ui/AbstractActivityController;
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    invoke-virtual {v8, v0}, Lcom/kingsoft/mail/ui/SwipeBackView;->setController(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 417
    .end local v0    # "aac":Lcom/kingsoft/mail/ui/AbstractActivityController;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    const v3, 0x7f0400a5

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/SwipeBackView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    .line 221
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeBackView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    .line 223
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c021e

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/MessageScrollView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mScrollView:Lcom/kingsoft/mail/browse/MessageScrollView;

    .line 225
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0221

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationViewHeader;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/kingsoft/mail/browse/ConversationViewHeader;

    .line 227
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0224

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/MessageInviteView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageInviteView:Lcom/kingsoft/mail/browse/MessageInviteView;

    .line 229
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c021f

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/MessageHeaderView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 231
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0223

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/MessageFooterView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

    .line 241
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0222

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/BorderView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/BorderView;->disableCardBottomBorder()V

    .line 245
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0226

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 247
    new-instance v3, Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    .line 249
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->instantiateProgressIndicators(Landroid/view/View;)V

    .line 253
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0225

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ll:Landroid/widget/LinearLayout;

    .line 255
    new-instance v3, Lcom/kingsoft/mail/browse/MessageWebView;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    .line 256
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setOverScrollMode(I)V

    .line 261
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getWebViewClient()Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 262
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3, v7}, Lcom/kingsoft/mail/browse/MessageWebView;->setFocusable(Z)V

    .line 270
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 272
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 273
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 275
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kingsoft/mail/utils/ConversationViewUtils;->setTextZoom(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    .line 278
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 280
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 281
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 282
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 284
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setBackgroundColor(I)V

    .line 285
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mScrollView:Lcom/kingsoft/mail/browse/MessageScrollView;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageScrollView;->setInnerScrollableView(Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;)V

    .line 291
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c0220

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->divider:Landroid/view/View;

    .line 297
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v4, 0x7f0c021d

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    .line 298
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v0

    .line 299
    .local v0, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v3, v0, Lcom/kingsoft/mail/browse/EmlViewerActivity;

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v3, v9}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setVisibility(I)V

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    .line 303
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIv:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreIv:Landroid/widget/ImageView;

    .line 304
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->messageEt:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    .line 305
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    const v4, 0x7f1001fd

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 325
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->replyIv:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->btn_send_quick_reply:Landroid/widget/ImageView;

    .line 326
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->btn_send_quick_reply:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 327
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$2;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    sget-object v3, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    sget-object v3, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    .line 355
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    instance-of v3, v3, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v3, :cond_1

    .line 356
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    check-cast v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 357
    .local v1, "f":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    new-instance v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    iput-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    .line 358
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    iget-object v4, v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->mMessageKey:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/EmailApplication;->registerBodyObserver(Lcom/kingsoft/email/EmailApplication$BodyObserver;)V

    .line 363
    .end local v1    # "f":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 428
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 430
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMsgBodyObserver:Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->unRegisterBodyObserver(Lcom/kingsoft/email/EmailApplication$BodyObserver;)V

    .line 433
    :cond_0
    sget-object v0, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    sget-object v0, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    .line 434
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dismissLoadingStatus()V

    .line 435
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->destroy()V

    .line 436
    return-void
.end method

.method public onPause()V
    .locals 8

    .prologue
    .line 1050
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1051
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1053
    const-string/jumbo v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1063
    :cond_0
    const-string/jumbo v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1064
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1065
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1068
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1069
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v1

    .line 1070
    .local v1, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v5, v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v5, :cond_2

    .line 1071
    check-cast v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .end local v1    # "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 1073
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    .line 1074
    .local v4, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, "inputContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1076
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v6, v6, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setQuickReplyCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .end local v3    # "inputContent":Ljava/lang/String;
    .end local v4    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_2
    :goto_0
    return-void

    .line 1079
    .restart local v3    # "inputContent":Ljava/lang/String;
    .restart local v4    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v6, v6, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->qrbb:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1044
    :cond_0
    return-void
.end method

.method protected recipientMatchesThisAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "recipientAddress"    # Ljava/lang/String;

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1201
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->matchesAccountOrCustomFrom(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 19
    .param p1, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 621
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 628
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .local v11, "dataBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v14

    .line 632
    .local v14, "mailContent":Ljava/lang/String;
    invoke-static {v14}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml()Ljava/lang/String;

    move-result-object v14

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mailer-daemon@sina.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyText:Ljava/lang/String;

    const-string/jumbo v6, "\n"

    const-string/jumbo v17, "</br>"

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 637
    :cond_0
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->enableInlineOperations(Z)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getBaseUri()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dealWithHtmlBody(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/browse/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/MessageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationMessage;->isFlaggedCalendarInviteIncoming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->ll:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 680
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->alwaysShowImages:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v6, v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->newMessageHeaderItem(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v13

    .line 684
    .local v13, "item":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Z)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageInviteView:Lcom/kingsoft/mail/browse/MessageInviteView;

    invoke-virtual {v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dealWithHtmlBody(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/kingsoft/mail/browse/MessageInviteView;->bind(Lcom/kingsoft/mail/providers/Message;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-boolean v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->hasAttachments:Z

    if-eqz v3, :cond_3

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->divider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageFooterView;->setVisibility(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getAccountUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v13, v4, v6}, Lcom/kingsoft/mail/browse/MessageFooterView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V

    .line 697
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v10

    .line 698
    .local v10, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v3, v10, Lcom/kingsoft/mail/browse/EmlViewerActivity;

    if-eqz v3, :cond_4

    .line 766
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->btn_send_quick_reply:Landroid/widget/ImageView;

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    return-void

    .line 694
    .end local v10    # "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->divider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/kingsoft/mail/browse/MessageFooterView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/MessageFooterView;->setVisibility(I)V

    goto :goto_0

    .line 700
    .restart local v10    # "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    :cond_4
    instance-of v3, v10, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v3, :cond_2

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->setQuickReplyCache()V

    move-object v15, v10

    .line 703
    check-cast v15, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 704
    .local v15, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    const/4 v5, 0x1

    .line 705
    .local v5, "enableMoveTo":Z
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 706
    invoke-virtual {v15}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v15}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v5, 0x1

    .line 708
    :cond_5
    :goto_2
    const/4 v7, 0x0

    .line 709
    .local v7, "searching":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 710
    .local v9, "activity":Landroid/app/Activity;
    if-eqz v9, :cond_6

    instance-of v3, v9, Lcom/kingsoft/mail/ui/MailActivity;

    if-eqz v3, :cond_6

    .line 711
    check-cast v9, Lcom/kingsoft/mail/ui/MailActivity;

    .end local v9    # "activity":Landroid/app/Activity;
    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/MailActivity;->getmController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 712
    .local v8, "aac":Lcom/kingsoft/mail/ui/AbstractActivityController;
    if-eqz v8, :cond_6

    .line 713
    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchBarController()Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    move-result-object v16

    .line 714
    .local v16, "searchBarController":Lcom/kingsoft/mail/maillist/controller/SearchBarController;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v7

    .line 717
    .end local v8    # "aac":Lcom/kingsoft/mail/ui/AbstractActivityController;
    .end local v16    # "searchBarController":Lcom/kingsoft/mail/maillist/controller/SearchBarController;
    :cond_6
    move v12, v5

    .line 718
    .local v12, "enable":Z
    new-instance v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v4

    iget-boolean v4, v4, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;-><init>(Landroid/content/Context;ZZZZ)V

    .line 719
    .local v2, "bba":Lcom/kingsoft/mail/adapter/BottomBarAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;ZLcom/kingsoft/mail/adapter/BottomBarAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 706
    .end local v2    # "bba":Lcom/kingsoft/mail/adapter/BottomBarAdapter;
    .end local v7    # "searching":Z
    .end local v12    # "enable":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public saveQuickReplyCache()V
    .locals 6

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v0

    .line 1008
    .local v0, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v3, v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v3, :cond_0

    .line 1009
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    .line 1011
    .local v2, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "inputContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->setQuickReplyCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->accountUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageDetailsExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;ZI)V
    .locals 0
    .param p1, "i"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "expanded"    # Z
    .param p3, "heightBefore"    # I

    .prologue
    .line 900
    return-void
.end method

.method public setMessageExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;III)V
    .locals 0
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "newSpacerHeight"    # I
    .param p3, "topBorderHeight"    # I
    .param p4, "bottomBorderHeight"    # I

    .prologue
    .line 894
    return-void
.end method

.method public setMessageSpacerHeight(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;I)V
    .locals 0
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "newSpacerHeight"    # I

    .prologue
    .line 888
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/kingsoft/mail/browse/ConversationViewHeader;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public showExternalResources(Lcom/kingsoft/mail/providers/Message;)V
    .locals 2
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 905
    return-void
.end method

.method public showExternalResources(Ljava/lang/String;)V
    .locals 7
    .param p1, "rawSenderAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 942
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 948
    .local v2, "networkType":I
    const-string/jumbo v4, "<img[^>]*src=\"cid(?-i):([^\"]*)\""

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 951
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 953
    .local v1, "match":Ljava/util/regex/Matcher;
    if-ne v2, v6, :cond_3

    .line 954
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 965
    .local v0, "contentUri":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/ui/SecureConversationViewController$1;)V

    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$JavascriptInterfaceForInlineImage;->downloadInlineWithContentId(Ljava/lang/String;)V

    .line 957
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    .restart local v0    # "contentUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 961
    if-ne v2, v6, :cond_2

    .line 962
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->showNetworkDialog(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public showLoadingProgress()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->showLoadingStatus(Z)V

    .line 423
    :cond_0
    return-void
.end method

.method public supportsMessageTransforms()Z
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method protected tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .local v2, "tokenized":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1171
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1173
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
