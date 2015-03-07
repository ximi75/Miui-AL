.class public Lcom/kingsoft/emailsync/SyncManager$AccountList;
.super Ljava/util/ArrayList;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAmMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;)V
    .locals 1

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$AccountList;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$AccountList;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/kingsoft/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/Account;->getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 300
    check-cast p1, Lcom/android/emailcommon/provider/Account;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method public contains(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 320
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 321
    const/4 v2, 0x1

    .line 324
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;
    .locals 1
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public getById(J)Lcom/android/emailcommon/provider/Account;
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 329
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 333
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByName(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 338
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
