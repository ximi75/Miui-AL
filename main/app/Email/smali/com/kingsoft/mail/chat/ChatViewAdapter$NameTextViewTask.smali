.class Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;
.super Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
.source "ChatViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameTextViewTask"
.end annotation


# instance fields
.field private iconBitmap:Landroid/graphics/Bitmap;

.field private mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field private mId:J

.field private mNeedImage:Z

.field private mShowExpandImageBtn:Z

.field private mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p2, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p3, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    const/4 v0, 0x0

    .line 756
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;-><init>()V

    .line 754
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mShowExpandImageBtn:Z

    .line 757
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .line 758
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 759
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    iput-wide v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mId:J

    .line 760
    invoke-virtual {p3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->hasIcon()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mNeedImage:Z

    .line 761
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 40

    .prologue
    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvNames:Landroid/widget/TextView;

    .line 775
    .local v7, "collapsedTv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v36, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static/range {v36 .. v36}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$300(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatCache;->namesInfo:Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

    move-object/from16 v24, v0

    .line 777
    .local v24, "namesInfo":Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
    const/16 v25, 0x5

    .line 778
    .local v25, "notSenderEllipsizedLen":I
    const/16 v26, 0x3c

    .line 779
    .local v26, "notreceiverEllipsizedLen":I
    const-string/jumbo v31, " "

    .line 780
    .local v31, "space":Ljava/lang/String;
    const-string/jumbo v8, ":"

    .line 781
    .local v8, "colon":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mTo:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 782
    .local v30, "sendTo":Ljava/lang/String;
    const-string/jumbo v9, ","

    .line 783
    .local v9, "comma":Ljava/lang/String;
    const-string/jumbo v11, "..."

    .line 784
    .local v11, "ellipsis":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v27

    .line 786
    .local v27, "paint":Landroid/graphics/Paint;
    sget-object v36, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 788
    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->nameInfoMaxWidth:I
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$400()I

    move-result v5

    .line 789
    .local v5, "availMaxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/widget/ImageView;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 790
    move-object/from16 v0, v24

    iget v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginLeft:I

    move/from16 v36, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginRigth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/kingsoft/mail/chat/ChatViewUtils;->measureImageViewWidth(Landroid/widget/ImageView;)I

    move-result v37

    add-int v36, v36, v37

    add-int v5, v5, v36

    .line 795
    :cond_0
    move-object/from16 v0, v27

    invoke-static {v11, v0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v12

    .line 797
    .local v12, "ellipsisWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v37, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 799
    .local v15, "from":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v37, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getToName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v33

    .line 801
    .local v33, "to":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v37, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getCcName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "cc":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 804
    .local v23, "nameToShow":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_2

    .line 805
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_1

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v36, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static/range {v36 .. v36}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$500(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v23

    .line 815
    :goto_0
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .local v34, "toShow":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, "indexFrom":I
    const/16 v18, 0x0

    .line 817
    .local v18, "lenFrom":I
    int-to-double v0, v5

    move-wide/from16 v36, v0

    const-wide v38, 0x3fd999999999999aL

    mul-double v36, v36, v38

    int-to-double v0, v12

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v21, v0

    .line 818
    .local v21, "limitWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v36

    if-nez v36, :cond_b

    .line 819
    move-object/from16 v0, v27

    invoke-static {v15, v0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 820
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    move/from16 v28, v25

    .line 821
    .local v28, "pos":I
    :goto_1
    move/from16 v22, v21

    .line 822
    .local v22, "maxNameWidth":I
    :goto_2
    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    if-lez v28, :cond_5

    .line 823
    add-int/lit8 v28, v28, -0x1

    goto :goto_2

    .line 808
    .end local v16    # "indexFrom":I
    .end local v18    # "lenFrom":I
    .end local v21    # "limitWidth":I
    .end local v22    # "maxNameWidth":I
    .end local v28    # "pos":I
    .end local v34    # "toShow":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v23, v6

    goto :goto_0

    .line 810
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_3

    .line 811
    move-object/from16 v23, v33

    goto :goto_0

    .line 813
    :cond_3
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 820
    .restart local v16    # "indexFrom":I
    .restart local v18    # "lenFrom":I
    .restart local v21    # "limitWidth":I
    .restart local v34    # "toShow":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    goto :goto_1

    .line 825
    .restart local v22    # "maxNameWidth":I
    .restart local v28    # "pos":I
    :cond_5
    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v36

    add-int v18, v28, v36

    .line 827
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mShowExpandImageBtn:Z

    .line 832
    .end local v22    # "maxNameWidth":I
    .end local v28    # "pos":I
    :goto_3
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :goto_4
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .local v17, "indexTo":I
    const/16 v19, 0x0

    .line 838
    .local v19, "lenTo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getReceiversCount()I

    move-result v29

    .line 839
    .local v29, "receiversCnt":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v13, "etcEnd":Ljava/lang/StringBuilder;
    const/16 v36, 0x1

    move/from16 v0, v29

    move/from16 v1, v36

    if-le v0, v1, :cond_6

    .line 841
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMsgUserEtc:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMsgPeopleUnit:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v14

    .line 847
    .local v14, "etcWidth":I
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    .line 848
    .local v10, "curW":I
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v35

    .line 849
    .local v35, "w":I
    sub-int v36, v5, v10

    sub-int v36, v36, v12

    sub-int v20, v36, v14

    .line 850
    .local v20, "limit":I
    add-int v36, v10, v35

    move/from16 v0, v36

    if-le v0, v5, :cond_c

    .line 851
    move/from16 v22, v20

    .line 852
    .restart local v22    # "maxNameWidth":I
    const/16 v36, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v28

    .line 853
    .restart local v28    # "pos":I
    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v36

    add-int v36, v36, v28

    add-int v19, v19, v36

    .line 855
    const/16 v36, 0x1

    move/from16 v0, v29

    move/from16 v1, v36

    if-le v0, v1, :cond_7

    .line 856
    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v36

    add-int v19, v19, v36

    .line 859
    :cond_7
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mShowExpandImageBtn:Z

    .line 865
    .end local v22    # "maxNameWidth":I
    .end local v28    # "pos":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mShowExpandImageBtn:Z

    move/from16 v36, v0

    if-eqz v36, :cond_d

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/kingsoft/mail/chat/ChatCacheItem;->setNeedExpend(Z)V

    .line 871
    :goto_6
    sget-object v36, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 872
    new-instance v32, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 873
    .local v32, "style":Landroid/text/SpannableStringBuilder;
    if-lez v18, :cond_8

    .line 875
    new-instance v36, Landroid/text/style/StyleSpan;

    const/16 v37, 0x1

    invoke-direct/range {v36 .. v37}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v37, v16, v18

    const/16 v38, 0x21

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v16

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 880
    :cond_8
    new-instance v36, Landroid/text/style/StyleSpan;

    const/16 v37, 0x1

    invoke-direct/range {v36 .. v37}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v37, v17, v19

    const/16 v38, 0x21

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v17

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->setCollapseUserInfo(Landroid/text/SpannableStringBuilder;)V

    .line 884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mNeedImage:Z

    move/from16 v36, v0

    if-eqz v36, :cond_9

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-object/from16 v37, v0

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->iconBitmap:Landroid/graphics/Bitmap;

    .line 887
    :cond_9
    return-void

    .line 829
    .end local v10    # "curW":I
    .end local v13    # "etcEnd":Ljava/lang/StringBuilder;
    .end local v14    # "etcWidth":I
    .end local v17    # "indexTo":I
    .end local v19    # "lenTo":I
    .end local v20    # "limit":I
    .end local v29    # "receiversCnt":I
    .end local v32    # "style":Landroid/text/SpannableStringBuilder;
    .end local v35    # "w":I
    :cond_a
    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    goto/16 :goto_3

    .line 834
    :cond_b
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 861
    .restart local v10    # "curW":I
    .restart local v13    # "etcEnd":Ljava/lang/StringBuilder;
    .restart local v14    # "etcWidth":I
    .restart local v17    # "indexTo":I
    .restart local v19    # "lenTo":I
    .restart local v20    # "limit":I
    .restart local v29    # "receiversCnt":I
    .restart local v35    # "w":I
    :cond_c
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v36

    add-int v19, v19, v36

    goto/16 :goto_5

    .line 868
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/kingsoft/mail/chat/ChatCacheItem;->setNeedExpend(Z)V

    goto/16 :goto_6
.end method

.method public hash()I
    .locals 2

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mId:J

    long-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->id:J

    iget-wide v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 890
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    .line 891
    .local v0, "expandImageView":Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mShowExpandImageBtn:Z

    if-eqz v1, :cond_1

    .line 892
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->isUserInfoCollaps()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-static {v1, v2}, Lcom/kingsoft/mail/chat/ChatViewUtils;->setUserInfoCollaps(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 902
    :goto_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mNeedImage:Z

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 921
    :goto_2
    return-void

    .line 894
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 900
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$500(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/chat/ChatViewUtils;->setUserInfoExpand(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 909
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->isCollapse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 910
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 912
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 915
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->isCollapse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 916
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 918
    :cond_6
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
