.class public Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;
.super Landroid/os/AsyncTask;
.source "SwipeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SwipeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private rep:I

.field final synthetic this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

.field private total:I


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/SwipeableListView;I)V
    .locals 1
    .param p2, "total"    # I

    .prologue
    .line 348
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 349
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 345
    const/16 v0, 0x64

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->i:I

    .line 347
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$300(Lcom/kingsoft/mail/ui/SwipeableListView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->rep:I

    .line 350
    iput p2, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->total:I

    .line 351
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 355
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->i:I

    if-lez v1, :cond_0

    .line 356
    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->i:I

    .line 357
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 358
    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 363
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$300(Lcom/kingsoft/mail/ui/SwipeableListView;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 369
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 8
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 379
    aget-object v1, p1, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 381
    .local v0, "value":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$300(Lcom/kingsoft/mail/ui/SwipeableListView;)I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->total:I

    mul-int/2addr v3, v0

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L

    div-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v7, v2, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
