.class final Lcom/kingsoft/email/service/ImapService$5;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/email/service/ImapService$SortableMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/email/service/ImapService$SortableMessage;Lcom/kingsoft/email/service/ImapService$SortableMessage;)I
    .locals 4
    .param p1, "lhs"    # Lcom/kingsoft/email/service/ImapService$SortableMessage;
    .param p2, "rhs"    # Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .prologue
    .line 1625
    # getter for: Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J
    invoke-static {p1}, Lcom/kingsoft/email/service/ImapService$SortableMessage;->access$300(Lcom/kingsoft/email/service/ImapService$SortableMessage;)J

    move-result-wide v0

    # getter for: Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J
    invoke-static {p2}, Lcom/kingsoft/email/service/ImapService$SortableMessage;->access$300(Lcom/kingsoft/email/service/ImapService$SortableMessage;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J
    invoke-static {p1}, Lcom/kingsoft/email/service/ImapService$SortableMessage;->access$300(Lcom/kingsoft/email/service/ImapService$SortableMessage;)J

    move-result-wide v0

    # getter for: Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J
    invoke-static {p2}, Lcom/kingsoft/email/service/ImapService$SortableMessage;->access$300(Lcom/kingsoft/email/service/ImapService$SortableMessage;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1622
    check-cast p1, Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/service/ImapService$5;->compare(Lcom/kingsoft/email/service/ImapService$SortableMessage;Lcom/kingsoft/email/service/ImapService$SortableMessage;)I

    move-result v0

    return v0
.end method
