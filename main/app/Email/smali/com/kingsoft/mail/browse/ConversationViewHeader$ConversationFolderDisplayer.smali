.class Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;
.super Lcom/kingsoft/mail/ui/FolderDisplayer;
.source "ConversationViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationFolderDisplayer"
.end annotation


# instance fields
.field private mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dims"    # Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderDisplayer;-><init>(Landroid/content/Context;)V

    .line 216
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    .line 217
    return-void
.end method

.method private addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 5
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bgColor"    # I
    .param p4, "fgColor"    # I

    .prologue
    const/16 v4, 0x21

    .line 237
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 238
    .local v1, "start":I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 241
    .local v0, "end":I
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 243
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 245
    new-instance v2, Lcom/kingsoft/mail/browse/FolderSpan;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-direct {v2, p1, v3}, Lcom/kingsoft/mail/browse/FolderSpan;-><init>(Landroid/text/Spanned;Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;)V

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 247
    return-void
.end method


# virtual methods
.method public appendFolderSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p1, "sb"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 220
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 221
    .local v1, "f":Lcom/kingsoft/mail/providers/Folder;
    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDefaultBgColor:I

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v0

    .line 222
    .local v0, "bgColor":I
    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDefaultFgColor:I

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/providers/Folder;->getForegroundColor(I)I

    move-result v2

    .line 223
    .local v2, "fgColor":I
    iget-object v6, v1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v0, v2}, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    goto :goto_0

    .line 226
    .end local v0    # "bgColor":I
    .end local v1    # "f":Lcom/kingsoft/mail/providers/Folder;
    .end local v2    # "fgColor":I
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 228
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x7f1000c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "name":Ljava/lang/String;
    const v6, 0x7f0b0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 230
    .restart local v0    # "bgColor":I
    const v6, 0x7f0b0043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 231
    .restart local v2    # "fgColor":I
    invoke-direct {p0, p1, v4, v0, v2}, Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 233
    .end local v0    # "bgColor":I
    .end local v2    # "fgColor":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method
