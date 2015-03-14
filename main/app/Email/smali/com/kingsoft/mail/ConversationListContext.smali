.class public Lcom/kingsoft/mail/ConversationListContext;
.super Ljava/lang/Object;
.source "ConversationListContext.java"


# static fields
.field public static final EXTRA_FOLDER_CONDITION:Ljava/lang/String; = "folder_condition"

.field public static final EXTRA_SEARCH_QUERY:Ljava/lang/String; = "query"

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field public final account:Lcom/kingsoft/mail/providers/Account;

.field public condition:Ljava/lang/String;

.field public final folder:Lcom/kingsoft/mail/providers/Folder;

.field public final searchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 69
    sget-object v0, Lcom/kingsoft/mail/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.mail.providers"

    const-string/jumbo v2, "account/*/folder/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "f"    # Lcom/kingsoft/mail/providers/Folder;
    .param p4, "con"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/kingsoft/mail/ConversationListContext;->account:Lcom/kingsoft/mail/providers/Account;

    .line 132
    iput-object p2, p0, Lcom/kingsoft/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 134
    iput-object p4, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static forBundle(Landroid/os/Bundle;)Lcom/kingsoft/mail/ConversationListContext;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const-string/jumbo v2, "account"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 91
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    const-string/jumbo v2, "folder"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 92
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    new-instance v2, Lcom/kingsoft/mail/ConversationListContext;

    const-string/jumbo v3, "query"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "folder_condition"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/kingsoft/mail/ConversationListContext;-><init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)V

    return-object v2
.end method

.method public static forCondition(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;
    .locals 1
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "condition"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lcom/kingsoft/mail/ConversationListContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/mail/ConversationListContext;-><init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forFolder(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ConversationListContext;
    .locals 2
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/kingsoft/mail/ConversationListContext;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/kingsoft/mail/ConversationListContext;-><init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forSearchQuery(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;
    .locals 3
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v1, Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/kingsoft/mail/ConversationListContext;-><init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final isMergedList(Lcom/kingsoft/mail/ConversationListContext;)Z
    .locals 1
    .param p0, "in"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ConversationListContext;->hasCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z
    .locals 1
    .param p0, "in"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public hasCondition()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "con"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    iget-object v2, p0, Lcom/kingsoft/mail/ConversationListContext;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    const-string/jumbo v1, "query"

    iget-object v2, p0, Lcom/kingsoft/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "folder"

    iget-object v2, p0, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-string/jumbo v1, "folder_condition"

    iget-object v2, p0, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v0
.end method
