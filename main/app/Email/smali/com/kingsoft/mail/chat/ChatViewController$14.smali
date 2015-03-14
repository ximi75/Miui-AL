.class Lcom/kingsoft/mail/chat/ChatViewController$14;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->calcFillLayoutParams(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;

.field final synthetic val$isLandOrientation:Z

.field final synthetic val$position:I

.field final synthetic val$showKeyboard:Z

.field final synthetic val$tabletUi:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;ZZIZ)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iput-boolean p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$showKeyboard:Z

    iput-boolean p3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$tabletUi:Z

    iput p4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    iput-boolean p5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$isLandOrientation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatFillView;->setVisibility(I)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getMeasuredHeight()I

    move-result v20

    .line 1183
    .local v20, "quickReplyBarHeight":I
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1184
    .local v18, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/chat/ChatFillView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getSelectItemOnGloableVisibleRt()Landroid/graphics/Rect;

    move-result-object v5

    .line 1188
    .local v5, "rt":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$showKeyboard:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$tabletUi:Z

    if-eqz v3, :cond_1

    .line 1189
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    move-object/from16 v24, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v24

    sub-int v4, v4, v24

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1190
    .local v10, "childView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 1191
    const v3, 0x7f0c0105

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1192
    .local v12, "contentView":Landroid/view/View;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1193
    .local v13, "contentViewRt":Landroid/graphics/Rect;
    invoke-virtual {v12, v13}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1194
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 1195
    iget v3, v13, Landroid/graphics/Rect;->right:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1196
    iget v3, v13, Landroid/graphics/Rect;->top:I

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1197
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 1200
    .end local v10    # "childView":Landroid/view/View;
    .end local v12    # "contentView":Landroid/view/View;
    .end local v13    # "contentViewRt":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1201
    .local v7, "headHeight":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v4, v7, 0x2

    add-int v16, v3, v4

    .line 1202
    .local v16, "height":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1203
    .local v6, "listRt":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1204
    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1205
    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 1208
    const/16 v17, 0x0

    .line 1209
    .local v17, "padding":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    add-int/lit8 v4, v4, 0x0

    if-le v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$showKeyboard:Z

    if-nez v3, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    move-object/from16 v24, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ListView;->getChildCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v19

    .line 1211
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 1212
    .local v23, "view":Landroid/view/View;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1213
    .local v11, "childViewRt":Landroid/graphics/Rect;
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1214
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    .line 1215
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$isLandOrientation:Z

    if-eqz v3, :cond_4

    .line 1216
    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1217
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 1240
    .end local v11    # "childViewRt":Landroid/graphics/Rect;
    .end local v19    # "pos":I
    .end local v23    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v9

    .line 1242
    .local v9, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v9, :cond_7

    .line 1243
    invoke-virtual {v9}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v8

    .line 1247
    .local v8, "isSendFromMyself":Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_8

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v24

    new-instance v3, Lcom/kingsoft/mail/chat/ChatViewController$14$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/mail/chat/ChatViewController$14$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$14;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    const-wide/16 v25, 0x12c

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1306
    :cond_3
    :goto_2
    return-void

    .line 1219
    .end local v8    # "isSendFromMyself":Z
    .end local v9    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    .restart local v11    # "childViewRt":Landroid/graphics/Rect;
    .restart local v19    # "pos":I
    .restart local v23    # "view":Landroid/view/View;
    :cond_4
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1220
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1222
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 1223
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 1224
    .local v22, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getSelectItemOnRealRt()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v14, v16, v3

    .line 1225
    .local v14, "diffHeight":I
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v3, v16

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v14

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1226
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 1228
    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int v21, v22, v3

    .line 1229
    .local v21, "scrollHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$isLandOrientation:Z

    if-eqz v3, :cond_6

    .line 1230
    const/4 v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1231
    const/4 v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1233
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1234
    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v21

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1235
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, v21

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1245
    .end local v11    # "childViewRt":Landroid/graphics/Rect;
    .end local v14    # "diffHeight":I
    .end local v19    # "pos":I
    .end local v21    # "scrollHeight":I
    .end local v22    # "top":I
    .end local v23    # "view":Landroid/view/View;
    .restart local v9    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "isSendFromMyself":Z
    goto/16 :goto_1

    .line 1288
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$tabletUi:Z

    if-eqz v3, :cond_9

    .line 1289
    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 1290
    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v4

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    .line 1293
    .local v15, "first":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    if-ge v3, v15, :cond_9

    .line 1294
    const/4 v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 1295
    const/4 v3, 0x0

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 1301
    .end local v15    # "first":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/kingsoft/mail/chat/ChatFillView;->setClipRect(Landroid/graphics/Rect;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/kingsoft/mail/chat/ChatFillView;->setIsSendFromMyself(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatFillView;->invalidate()V

    goto/16 :goto_2
.end method
