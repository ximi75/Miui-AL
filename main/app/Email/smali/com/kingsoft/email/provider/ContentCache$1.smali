.class Lcom/kingsoft/email/provider/ContentCache$1;
.super Landroid/util/LruCache;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/ContentCache;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/ContentCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kingsoft/email/provider/ContentCache$1;->this$0:Lcom/kingsoft/email/provider/ContentCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 413
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/database/Cursor;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/database/Cursor;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/provider/ContentCache$1;->entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/database/Cursor;
    .param p4, "newValue"    # Landroid/database/Cursor;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    sget-object v0, Lcom/kingsoft/email/provider/ContentCache;->sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v0, p3}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 421
    :cond_0
    return-void
.end method
