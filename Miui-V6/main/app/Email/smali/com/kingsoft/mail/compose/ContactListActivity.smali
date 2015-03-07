.class public Lcom/kingsoft/mail/compose/ContactListActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;,
        Lcom/kingsoft/mail/compose/ContactListActivity$CallbackInterface;,
        Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    }
.end annotation


# static fields
.field public static mAccount:Landroid/accounts/Account;

.field public static runingTask:I


# instance fields
.field private allcheckedlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field

.field galthread:Ljava/lang/Thread;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

.field private mCancel:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mGALHandler:Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;

.field private mListView:Landroid/widget/ListView;

.field private mOk:Landroid/widget/Button;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchWidgetAnchorView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private ret:I

.field private searchEDT:Landroid/widget/EditText;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/compose/ContactListActivity;->runingTask:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    .line 87
    const-string/jumbo v0, "to"

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    .line 214
    new-instance v0, Lcom/kingsoft/mail/compose/ContactListActivity$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/compose/ContactListActivity$2;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    .line 627
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mSearchWidgetAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mGALHandler:Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ContactListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    return-object v0
.end method

.method private compareSet()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 541
    :cond_0
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private containNewEmail(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    .local p2, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :cond_2
    const/4 v0, 0x0

    .line 313
    .local v0, "changed":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 314
    .local v4, "newBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    const/4 v1, 0x0

    .line 315
    .local v1, "contain":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 316
    .local v5, "oldBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v6, v5, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    iget-object v7, v4, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    const/4 v1, 0x1

    .line 322
    .end local v5    # "oldBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_5
    if-nez v1, :cond_3

    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_0
.end method

.method private inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;
    .locals 4
    .param p1, "activity"    # Lmiui/app/Activity;
    .param p2, "searchCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 139
    const v2, 0x7f0c015d

    invoke-virtual {p1, v2}, Lmiui/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 140
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lmiui/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lmiui/R$layout;->search_stub:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    const v2, 0x1020009

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 142
    .local v1, "searchView":Landroid/widget/TextView;
    const v2, 0x7f10013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 143
    new-instance v2, Lcom/kingsoft/mail/compose/ContactListActivity$1;

    invoke-direct {v2, p0, p2}, Lcom/kingsoft/mail/compose/ContactListActivity$1;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object v1
.end method

.method private initDate()V
    .locals 7

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    const-string/jumbo v4, "to"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v4, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    const/4 v3, 0x3

    iput v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    .line 168
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/mail/utils/ContactHelper;->getAllAddressbyHostEmailCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    :try_start_1
    new-instance v2, Lcom/kingsoft/email/provider/EmailSmallBean;

    const-string/jumbo v3, "email"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 183
    .local v2, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->setCheckList(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v2    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 193
    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    :goto_2
    new-instance v3, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v0}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    .line 198
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->updateButtonImg()V

    .line 201
    return-void

    .line 158
    .end local v0    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    const-string/jumbo v4, "cc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v4, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    const/4 v3, 0x4

    iput v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    goto :goto_0

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    const-string/jumbo v4, "bcc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v4, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    const/4 v3, 0x5

    iput v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    goto/16 :goto_0

    .line 193
    .restart local v0    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 193
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method private isChanged()Z
    .locals 2

    .prologue
    .line 532
    const-string/jumbo v0, "to"

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cc"

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "bcc"

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->compareSet()Z

    move-result v0

    .line 536
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCheckList(Lcom/kingsoft/email/provider/EmailSmallBean;)V
    .locals 4
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 206
    .local v0, "ex":Lcom/kingsoft/email/provider/EmailSmallBean;
    if-eqz v0, :cond_0

    .line 208
    iget-object v2, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->ischecked:Z

    goto :goto_0

    .line 212
    .end local v0    # "ex":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setChooseBack()V
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "containNew":Z
    const-string/jumbo v2, "to"

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/mail/compose/ContactListActivity;->containNewEmail(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 284
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 285
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "has_add_new_recipient"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    invoke-virtual {p0, v2, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->finish()V

    .line 299
    return-void

    .line 286
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, "cc"

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/mail/compose/ContactListActivity;->containNewEmail(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 288
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 289
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 290
    :cond_2
    const-string/jumbo v2, "bcc"

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/mail/compose/ContactListActivity;->containNewEmail(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 292
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 293
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private setViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 115
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mOk:Landroid/widget/Button;

    .line 118
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mCancel:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mTitle:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mActionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 128
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-direct {p0, p0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mSearchWidgetAnchorView:Landroid/view/View;

    .line 129
    const v1, 0x7f0c015e

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 135
    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mEmptyView:Landroid/view/View;

    .line 136
    return-void
.end method

.method private updateButtonImg()V
    .locals 4

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 529
    :goto_1
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0005

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 334
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 340
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->setChooseBack()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_0

    .line 261
    iget v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ContactListActivity;->setResult(I)V

    .line 262
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ContactListActivity;->setContentView(I)V

    .line 97
    iput-object p0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->setViews()V

    .line 99
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->initDate()V

    .line 100
    new-instance v0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mGALHandler:Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;

    .line 101
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 478
    const-string/jumbo v4, "onItemSelected - "

    invoke-static {v4}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 479
    const v4, 0x7f0c0161

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 480
    .local v0, "cb":Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    .line 481
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    invoke-virtual {v4, p3}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 482
    .local v1, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    .line 484
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 486
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 487
    .local v2, "exBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v4, v2, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    iput-boolean v6, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->ischecked:Z

    .line 492
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->updateButtonImg()V

    .line 514
    .end local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v2    # "exBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 498
    .restart local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 499
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 500
    .restart local v2    # "exBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v4, v2, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 502
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->updateButtonImg()V

    goto :goto_0

    .line 506
    .end local v2    # "exBean":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->allcheckedlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iput-boolean v7, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->ischecked:Z

    .line 510
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ContactListActivity;->updateButtonImg()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "env"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    iget v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->ret:I

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ContactListActivity;->setResult(I)V

    .line 277
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 106
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 111
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 270
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 271
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "info"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/mail/utils/ContactHelper;->getAllAddressbyHostEmailCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_2

    .line 352
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    const-string/jumbo v6, "email"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "mail":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v1, v3, v5}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v1, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->setCheckList(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    .line 359
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 363
    .end local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v3    # "mail":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_0
    :goto_1
    new-instance v6, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v2}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    .line 467
    iget-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 470
    iget-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 472
    :cond_1
    return-void

    .line 365
    :cond_2
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 365
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 370
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    .line 374
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/kingsoft/mail/utils/ContactHelper;->getAllAddressFuzzybykey(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_7

    .line 377
    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 378
    const-string/jumbo v6, "email"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3    # "mail":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .restart local v5    # "name":Ljava/lang/String;
    const-string/jumbo v6, "myemail"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "mymail":Ljava/lang/String;
    sget-object v6, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 386
    new-instance v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v1, v3, v5}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->setCheckList(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    .line 388
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 391
    .end local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v3    # "mail":Ljava/lang/String;
    .end local v4    # "mymail":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 393
    if-eqz v0, :cond_6

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/kingsoft/mail/compose/ContactListActivity$3;

    invoke-direct {v7, p0, p1}, Lcom/kingsoft/mail/compose/ContactListActivity$3;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity;Ljava/lang/CharSequence;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->galthread:Ljava/lang/Thread;

    .line 464
    iget-object v6, p0, Lcom/kingsoft/mail/compose/ContactListActivity;->galthread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 393
    :cond_7
    if-eqz v0, :cond_6

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 393
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_8

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v6
.end method
