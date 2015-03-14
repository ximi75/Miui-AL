.class Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;
.super Landroid/os/AsyncTask;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/RecentFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreRecent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/RecentFolderList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/kingsoft/mail/ui/RecentFolderList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/kingsoft/mail/ui/RecentFolderList;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->this$0:Lcom/kingsoft/mail/ui/RecentFolderList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    sget-boolean v0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_1
    iput-object p2, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 108
    iput-object p3, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 109
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 113
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v2, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 114
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string/jumbo v2, "RecentFolderList"

    const-string/jumbo v3, "Save: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->this$0:Lcom/kingsoft/mail/ui/RecentFolderList;

    # getter for: Lcom/kingsoft/mail/ui/RecentFolderList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/RecentFolderList;->access$100(Lcom/kingsoft/mail/ui/RecentFolderList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v6
.end method
