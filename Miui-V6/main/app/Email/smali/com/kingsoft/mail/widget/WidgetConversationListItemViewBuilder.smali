.class public Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;
.super Ljava/lang/Object;
.source "WidgetConversationListItemViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static DATE_FONT_SIZE:I

.field private static DATE_TEXT_COLOR:I

.field private static SUBJECT_FONT_SIZE:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderDisplayer:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->DATE_FONT_SIZE:I

    .line 126
    const v1, 0x7f0d0136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_FONT_SIZE:I

    .line 129
    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    .line 130
    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 131
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->DATE_TEXT_COLOR:I

    .line 134
    const v1, 0x7f020181

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 135
    return-void
.end method

.method private static addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "size"    # I
    .param p2, "color"    # I

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 144
    if-eqz p2, :cond_0

    .line 145
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 148
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getStyledView(Ljava/lang/CharSequence;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 17
    .param p1, "date"    # Ljava/lang/CharSequence;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "folderUri"    # Lcom/kingsoft/mail/utils/FolderUri;
    .param p4, "ignoreFolderType"    # I
    .param p5, "senders"    # Landroid/text/SpannableStringBuilder;
    .param p6, "filteredSubject"    # Ljava/lang/String;

    .prologue
    .line 158
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v13, :cond_3

    const/4 v4, 0x1

    .line 159
    .local v4, "isUnread":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "snippet":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    .line 163
    .local v3, "hasAttachments":Z
    sget v13, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->DATE_FONT_SIZE:I

    sget v14, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->DATE_TEXT_COLOR:I

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 166
    .local v8, "styledDate":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    sget v11, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 167
    .local v11, "subjectColor":I
    :goto_1
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v13, v0, v7}, Lcom/kingsoft/mail/providers/Conversation;->getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v10, "subjectAndSnippet":Landroid/text/SpannableStringBuilder;
    if-eqz v4, :cond_0

    .line 170
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 173
    :cond_0
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v13, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 175
    sget v13, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_FONT_SIZE:I

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 178
    .local v9, "styledSubject":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 179
    .local v5, "paperclipBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 180
    sget-object v5, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 184
    :cond_1
    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0400ba

    invoke-direct {v6, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 186
    .local v6, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual/range {p5 .. p5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "unstyledSenders":Ljava/lang/String;
    const v13, 0x7f0c0253

    invoke-virtual {v6, v13, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    const v13, 0x7f0c0256

    move-object/from16 v0, p1

    invoke-virtual {v6, v13, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    const v13, 0x7f0c0257

    move-object/from16 v0, p6

    invoke-virtual {v6, v13, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    const v13, 0x7f0c0258

    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    const v14, 0x7f0c016f

    if-eqz v4, :cond_5

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v6, v14, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    const v13, 0x7f0c0254

    const/16 v14, 0x8

    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    if-eqz v5, :cond_6

    .line 199
    const v13, 0x7f0c0255

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v13, 0x7f0c0255

    invoke-virtual {v6, v13, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 211
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 212
    new-instance v13, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mFolderDisplayer:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->mFolderDisplayer:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v1, v2}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;->loadConversationFolders(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;I)V

    .line 217
    :cond_2
    return-object v6

    .line 158
    .end local v3    # "hasAttachments":Z
    .end local v4    # "isUnread":Z
    .end local v5    # "paperclipBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v7    # "snippet":Ljava/lang/String;
    .end local v8    # "styledDate":Ljava/lang/CharSequence;
    .end local v9    # "styledSubject":Ljava/lang/CharSequence;
    .end local v10    # "subjectAndSnippet":Landroid/text/SpannableStringBuilder;
    .end local v11    # "subjectColor":I
    .end local v12    # "unstyledSenders":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v3    # "hasAttachments":Z
    .restart local v4    # "isUnread":Z
    .restart local v7    # "snippet":Ljava/lang/String;
    .restart local v8    # "styledDate":Ljava/lang/CharSequence;
    :cond_4
    sget v11, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    goto/16 :goto_1

    .line 191
    .restart local v5    # "paperclipBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "remoteViews":Landroid/widget/RemoteViews;
    .restart local v9    # "styledSubject":Ljava/lang/CharSequence;
    .restart local v10    # "subjectAndSnippet":Landroid/text/SpannableStringBuilder;
    .restart local v11    # "subjectColor":I
    .restart local v12    # "unstyledSenders":Ljava/lang/String;
    :cond_5
    const/16 v13, 0x8

    goto :goto_2

    .line 202
    :cond_6
    const v13, 0x7f0c0255

    const/16 v14, 0x8

    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method
