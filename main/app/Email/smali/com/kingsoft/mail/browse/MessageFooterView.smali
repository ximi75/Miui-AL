.class public Lcom/kingsoft/mail/browse/MessageFooterView;
.super Landroid/widget/LinearLayout;
.source "MessageFooterView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ORIGIN_VISIBLE_ATTACHMENTS_THRESHOLD:I = 0x2


# instance fields
.field private mAccountUri:Landroid/net/Uri;

.field public mAttBarCounts:I

.field private mAttachmentBarList:Landroid/widget/LinearLayout;

.field private mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

.field private mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

.field private mDownloadAll:Landroid/widget/Button;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

.field private mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mTotalAtts:Landroid/widget/TextView;

.field private mUpDownArrow:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageFooterView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/MessageFooterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->toggleShowMoreAttsVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/browse/MessageFooterView;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/browse/MessageFooterView;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageFooterView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private getAttachmentLoaderId()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 342
    .local v1, "msg":Lcom/kingsoft/mail/providers/Message;
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, v1, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 345
    :cond_0
    return-object v0

    .line 341
    .end local v1    # "msg":Lcom/kingsoft/mail/providers/Message;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private renderAttachments(Ljava/util/List;Z)V
    .locals 6
    .param p2, "loaderResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 231
    .local v3, "maxSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v1, "barAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 234
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-nez v4, :cond_2

    iget v4, v0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_2

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v0    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    invoke-static {p1}, Lcom/kingsoft/mail/providers/Attachment;->toJSONArray(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentsJson:Ljava/lang/String;

    .line 242
    invoke-direct {p0, v1, p2}, Lcom/kingsoft/mail/browse/MessageFooterView;->renderBarAttachments(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private renderAttachments(Z)V
    .locals 3
    .param p1, "loaderResult"    # Z

    .prologue
    .line 211
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const/4 v1, -0x1

    .line 213
    .local v1, "i":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->get()Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationMessage;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 222
    .restart local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/browse/MessageFooterView;->renderAttachments(Ljava/util/List;Z)V

    .line 223
    return-void
.end method

.method private renderBarAttachments(Ljava/util/List;Z)V
    .locals 13
    .param p2, "loaderResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "barAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    const/4 v0, 0x1

    .line 248
    .local v0, "allSavedAttachments":Z
    const/4 v4, 0x0

    .line 250
    .local v4, "downloadingAttachment":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/Attachment;

    .line 251
    .local v2, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget v9, v2, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :cond_0
    iget v9, v2, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 259
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v6

    .line 260
    .local v6, "id":Landroid/net/Uri;
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .line 263
    .local v3, "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    if-nez v3, :cond_2

    .line 264
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    check-cast v3, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .line 268
    .restart local v3    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    :cond_2
    if-nez v3, :cond_3

    .line 269
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v9, p0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    move-result-object v3

    .line 270
    invoke-virtual {v3, v6}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->setTag(Ljava/lang/Object;)V

    .line 271
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v9}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->initialize(Landroid/app/FragmentManager;)V

    .line 273
    iget v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    .line 274
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->shouldAttsBarListCollapse()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 275
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v3, v2, v9, p2}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 284
    .end local v2    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .end local v3    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->shouldAttsBarListCollapse()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 285
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100279

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v12, v12, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .end local v8    # "text":Ljava/lang/String;
    :goto_2
    sget-boolean v9, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->sDownloadAll:Z

    if-eqz v9, :cond_7

    .line 295
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 297
    .local v7, "resTag":Ljava/lang/Integer;
    const/4 v1, -0x1

    .line 298
    .local v1, "arrow":I
    if-eqz v7, :cond_6

    .line 299
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 302
    :cond_6
    const v9, 0x7f0201e3

    if-ne v1, v9, :cond_a

    .line 303
    if-nez v0, :cond_9

    iget v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    .line 304
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_3
    const/4 v9, 0x1

    if-lt v4, v9, :cond_b

    .line 318
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    const v10, 0x7f1000ef

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 323
    :goto_4
    const/4 v8, 0x0

    .line 324
    .restart local v8    # "text":Ljava/lang/String;
    const v9, 0x7f0201e3

    if-ne v1, v9, :cond_c

    .line 325
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1001f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v12, v12, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 335
    :goto_5
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .end local v1    # "arrow":I
    .end local v7    # "resTag":Ljava/lang/Integer;
    .end local v8    # "text":Ljava/lang/String;
    :cond_7
    return-void

    .line 291
    :cond_8
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 308
    .restart local v1    # "arrow":I
    .restart local v7    # "resTag":Ljava/lang/Integer;
    :cond_9
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 313
    :cond_a
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 320
    :cond_b
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    const v10, 0x7f1000ea

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 330
    .restart local v8    # "text":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100279

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    add-int/lit8 v12, v12, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private toggleShowMoreAttsVisibility()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->shouldAttsBarListCollapse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "accountUri"    # Landroid/net/Uri;
    .param p3, "measureOnly"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 146
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAccountUri:Landroid/net/Uri;

    .line 152
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v5

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 158
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iput v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    .line 161
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 162
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getAttachmentLoaderId()Ljava/lang/Integer;

    move-result-object v1

    .line 169
    .local v1, "oldAttachmentLoaderId":Ljava/lang/Integer;
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 171
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getAttachmentLoaderId()Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, "attachmentLoaderId":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 180
    :cond_1
    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    .line 181
    sget-object v4, Lcom/kingsoft/mail/browse/MessageFooterView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "binding footer view, calling initLoader for message %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    new-instance v5, Lcom/kingsoft/mail/browse/MessageFooterView$2;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/browse/MessageFooterView$2;-><init>(Lcom/kingsoft/mail/browse/MessageFooterView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    if-nez v4, :cond_4

    .line 204
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->renderAttachments(Z)V

    .line 206
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_0
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/MessageFooterView;->setVisibility(I)V

    .line 207
    return-void

    :cond_5
    move v2, v3

    .line 206
    goto :goto_0
.end method

.method public initialize(Landroid/app/LoaderManager;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 142
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mFragmentManager:Landroid/app/FragmentManager;

    .line 143
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentLoader;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->attachmentListUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/AttachmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onDetachedFromParent()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    .line 351
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    const v0, 0x7f0c01b2

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTitleText:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0c0102

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarList:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f0c0103

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mDownloadAll:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c00e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mUpDownArrow:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mTotalAtts:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/kingsoft/mail/browse/MessageFooterView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/MessageFooterView$1;-><init>(Lcom/kingsoft/mail/browse/MessageFooterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    check-cast p2, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .end local p2    # "data":Landroid/database/Cursor;
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .line 363
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageFooterView;->renderAttachments(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/browse/MessageFooterView;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .line 373
    return-void
.end method

.method public shouldAttsBarListCollapse()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttBarCounts:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleAttachmentBarListVisibility()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageFooterView;->mAttachmentBarListOrginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
