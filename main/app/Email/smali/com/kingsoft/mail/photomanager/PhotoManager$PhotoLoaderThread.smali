.class public abstract Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;
.super Landroid/os/HandlerThread;
.source "PhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PhotoLoaderThread"
.end annotation


# static fields
.field private static final MESSAGE_LOAD_PHOTOS:I


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Landroid/content/ContentResolver;)V
    .locals 2
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    .line 663
    const-string/jumbo v0, "PhotoLoader"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 664
    iput-object p2, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 665
    return-void
.end method

.method private loadPhotosFromContactInBackground()V
    .locals 25

    .prologue
    .line 727
    const-string/jumbo v19, "pre processing"

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 728
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 729
    .local v9, "loadRequests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 730
    .local v4, "decodeRequests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 732
    .local v17, "undecodedRequests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$200(Lcom/kingsoft/mail/photomanager/PhotoManager;)Ljava/util/Map;

    move-result-object v20

    monitor-enter v20

    .line 733
    :try_start_0
    new-instance v15, Ljava/util/PriorityQueue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$200(Lcom/kingsoft/mail/photomanager/PhotoManager;)Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 734
    .local v15, "requests":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    const/4 v2, 0x0

    .line 737
    .local v2, "batchCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->getMaxBatchCount()I

    move-result v10

    .line 738
    .local v10, "maxBatchCount":I
    :cond_0
    invoke-virtual {v15}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 739
    invoke-virtual {v15}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 740
    .local v14, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$300()Landroid/util/LruCache;

    move-result-object v19

    invoke-virtual {v14}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getAddress()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .line 742
    .local v7, "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    iget-boolean v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    iget v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    move/from16 v20, v0

    iget v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    move/from16 v21, v0

    iget-object v0, v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    move/from16 v22, v0

    iget-object v0, v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/kingsoft/mail/photomanager/PhotoManager;->isSizeCompatible(IIII)Z

    move-result v19

    if-nez v19, :cond_4

    .line 744
    :cond_1
    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 746
    add-int/lit8 v2, v2, 0x1

    .line 748
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 749
    .local v11, "msg":Landroid/os/Message;
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->what:I

    .line 750
    invoke-virtual {v14}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->hashCode()I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$100(Lcom/kingsoft/mail/photomanager/PhotoManager;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    .end local v11    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    iget v0, v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    .line 760
    if-lez v10, :cond_0

    if-lt v2, v10, :cond_0

    .line 764
    .end local v7    # "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v14    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    :cond_3
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 766
    const-string/jumbo v19, "load photos"

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadPhotosFromContact(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v12

    .line 769
    .local v12, "photosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;>;"
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 777
    const-string/jumbo v19, "post processing"

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 778
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 787
    .local v3, "cacheKey":Ljava/lang/String;
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    move-object/from16 v0, v19

    # invokes: Lcom/kingsoft/mail/photomanager/PhotoManager;->cacheBitmapHolder(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V
    invoke-static {v3, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$500(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V

    goto :goto_1

    .line 734
    .end local v2    # "batchCount":I
    .end local v3    # "cacheKey":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "maxBatchCount":I
    .end local v12    # "photosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;>;"
    .end local v15    # "requests":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 755
    .restart local v2    # "batchCount":I
    .restart local v7    # "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .restart local v10    # "maxBatchCount":I
    .restart local v14    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    .restart local v15    # "requests":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    :cond_4
    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$400()Landroid/util/LruCache;

    move-result-object v19

    iget-object v0, v14, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_2

    .line 756
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    .end local v7    # "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v14    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "photosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 791
    .local v13, "r":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$400()Landroid/util/LruCache;

    move-result-object v19

    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_6

    .line 795
    invoke-virtual {v13}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getAddress()Ljava/lang/Object;

    move-result-object v3

    .line 796
    .local v3, "cacheKey":Ljava/lang/Object;
    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$300()Landroid/util/LruCache;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .line 797
    .restart local v7    # "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    iget-boolean v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    iget v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    move/from16 v20, v0

    iget v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    move/from16 v21, v0

    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    move/from16 v22, v0

    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/kingsoft/mail/photomanager/PhotoManager;->isSizeCompatible(IIII)Z

    move-result v19

    if-nez v19, :cond_8

    .line 799
    :cond_7
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 803
    :cond_8
    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    move/from16 v18, v0

    .line 804
    .local v18, "w":I
    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v6, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    .line 805
    .local v6, "h":I
    iget-object v0, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    move-object/from16 v16, v0

    .line 807
    .local v16, "src":[B
    if-eqz v18, :cond_9

    if-nez v6, :cond_a

    .line 808
    :cond_9
    const-string/jumbo v19, "PhotoManager"

    new-instance v20, Ljava/lang/Error;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v21, "bad dimensions for request=%s w/h=%s/%s"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v19 .. v22}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 812
    :cond_a
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->decodeByteArrayWithCenterCrop([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 819
    .local v5, "decoded":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_b

    .line 820
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 821
    iget-object v0, v13, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/kingsoft/mail/photomanager/PhotoManager;->cacheBitmap(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 824
    :cond_b
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 827
    .end local v3    # "cacheKey":Ljava/lang/Object;
    .end local v5    # "decoded":Landroid/graphics/Bitmap;
    .end local v6    # "h":I
    .end local v7    # "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .end local v13    # "r":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    .end local v16    # "src":[B
    .end local v18    # "w":I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadPhotosFromLetterProviderBackground(Ljava/util/Collection;)V

    .line 828
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    move-object/from16 v19, v0

    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$100(Lcom/kingsoft/mail/photomanager/PhotoManager;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    return-void
.end method

.method private loadPhotosFromLetterProviderBackground(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "loadRequests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadBitmaps(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    .line 718
    .local v3, "photosMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .line 719
    .local v2, "key":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 720
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->cacheBitmap(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 723
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "key":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/PhotoManager;

    # getter for: Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kingsoft/mail/photomanager/PhotoManager;->access$100(Lcom/kingsoft/mail/photomanager/PhotoManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected appendQuestionMarks(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "query"    # Ljava/lang/StringBuilder;
    .param p2, "itemCount"    # I

    .prologue
    .line 842
    const/4 v0, 0x1

    .line 843
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 844
    if-eqz v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 849
    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 851
    :cond_1
    return-void
.end method

.method protected createInQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "itemCount"    # I

    .prologue
    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 836
    .local v0, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->appendQuestionMarks(Ljava/lang/StringBuilder;I)V

    .line 837
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ensureHandler()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 675
    :cond_0
    return-void
.end method

.method protected getMaxBatchCount()I
    .locals 1

    .prologue
    .line 709
    const/4 v0, -0x1

    return v0
.end method

.method protected getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 698
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 695
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->loadPhotosFromContactInBackground()V

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract loadBitmaps(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract loadPhotosFromContact(Ljava/util/Collection;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->ensureHandler()V

    .line 684
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    return-void
.end method
