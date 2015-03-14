.class public Lcom/kingsoft/mail/browse/WebViewContextMenu;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/WebViewContextMenu$1;,
        Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;,
        Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;,
        Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;,
        Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mSupportsDial:Z

.field private final mSupportsSms:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "host"    # Landroid/app/Activity;

    .prologue
    const/high16 v6, 0x10000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    .line 88
    iget-object v1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DIAL"

    const-string/jumbo v5, "tel:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mSupportsDial:Z

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    const-string/jumbo v5, "smsto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mSupportsSms:Z

    .line 96
    return-void

    :cond_0
    move v1, v3

    .line 89
    goto :goto_0

    :cond_1
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/WebViewContextMenu;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/WebViewContextMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->shareLink(Ljava/lang/String;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 152
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 153
    return-void
.end method

.method private shareLink(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "send":Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getChooserTitleStringResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showShareLinkMenuItem()Z
    .locals 4

    .prologue
    .line 129
    iget-object v3, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "send":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 133
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getChooserTitleStringResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2
    .param p1, "menuType"    # Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    .prologue
    .line 391
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$kingsoft$mail$browse$WebViewContextMenu$MenuType:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    const v0, 0x7f100121

    return v0

    .line 391
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected getMenuGroupResId(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;)I
    .locals 2
    .param p1, "menuGroupType"    # Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;

    .prologue
    .line 405
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$kingsoft$mail$browse$WebViewContextMenu$MenuGroupType:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected MenuGroupType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_0
    const v0, 0x7f0c029c

    .line 413
    :goto_0
    return v0

    .line 409
    :pswitch_1
    const v0, 0x7f0c02a1

    goto :goto_0

    .line 411
    :pswitch_2
    const v0, 0x7f0c02a3

    goto :goto_0

    .line 413
    :pswitch_3
    const v0, 0x7f0c02a6

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I
    .locals 2
    .param p1, "menuType"    # Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    .prologue
    .line 357
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$kingsoft$mail$browse$WebViewContextMenu$MenuType:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected MenuType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_0
    const v0, 0x7f0c02a7

    .line 379
    :goto_0
    return v0

    .line 361
    :pswitch_1
    const v0, 0x7f0c02a8

    goto :goto_0

    .line 363
    :pswitch_2
    const v0, 0x7f0c02a9

    goto :goto_0

    .line 365
    :pswitch_3
    const v0, 0x7f0c029d

    goto :goto_0

    .line 367
    :pswitch_4
    const v0, 0x7f0c029e

    goto :goto_0

    .line 369
    :pswitch_5
    const v0, 0x7f0c029f

    goto :goto_0

    .line 371
    :pswitch_6
    const v0, 0x7f0c02a0

    goto :goto_0

    .line 373
    :pswitch_7
    const v0, 0x7f0c02a2

    goto :goto_0

    .line 375
    :pswitch_8
    const v0, 0x7f0c028b

    goto :goto_0

    .line 377
    :pswitch_9
    const v0, 0x7f0c02a4

    goto :goto_0

    .line 379
    :pswitch_a
    const v0, 0x7f0c02a5

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 423
    const v0, 0x7f120012

    return v0
.end method

.method protected getMenuTypeFromResId(I)Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;
    .locals 2
    .param p1, "menuResId"    # I

    .prologue
    .line 324
    const v0, 0x7f0c02a7

    if-ne p1, v0, :cond_0

    .line 325
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    .line 345
    :goto_0
    return-object v0

    .line 326
    :cond_0
    const v0, 0x7f0c02a8

    if-ne p1, v0, :cond_1

    .line 327
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 328
    :cond_1
    const v0, 0x7f0c02a9

    if-ne p1, v0, :cond_2

    .line 329
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 330
    :cond_2
    const v0, 0x7f0c029d

    if-ne p1, v0, :cond_3

    .line 331
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 332
    :cond_3
    const v0, 0x7f0c029e

    if-ne p1, v0, :cond_4

    .line 333
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 334
    :cond_4
    const v0, 0x7f0c029f

    if-ne p1, v0, :cond_5

    .line 335
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 336
    :cond_5
    const v0, 0x7f0c02a0

    if-ne p1, v0, :cond_6

    .line 337
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 338
    :cond_6
    const v0, 0x7f0c02a2

    if-ne p1, v0, :cond_7

    .line 339
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 340
    :cond_7
    const v0, 0x7f0c028b

    if-ne p1, v0, :cond_8

    .line 341
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 342
    :cond_8
    const v0, 0x7f0c02a4

    if-ne p1, v0, :cond_9

    .line 343
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 344
    :cond_9
    const v0, 0x7f0c02a5

    if-ne p1, v0, :cond_a

    .line 345
    sget-object v0, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    goto :goto_0

    .line 347
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected resource id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 24
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 160
    move-object/from16 v18, p2

    check-cast v18, Landroid/webkit/WebView;

    .line 161
    .local v18, "webview":Landroid/webkit/WebView;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v14

    .line 162
    .local v14, "result":Landroid/webkit/WebView$HitTestResult;
    if-nez v14, :cond_0

    .line 311
    :goto_0
    :sswitch_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v16

    .line 167
    .local v16, "type":I
    sparse-switch v16, :sswitch_data_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    .line 181
    .local v11, "inflater":Landroid/view/MenuInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResourceId()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/view/ContextMenu;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 186
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 187
    .local v12, "menuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 192
    .end local v12    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "extra":Ljava/lang/String;
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 195
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 197
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 199
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuGroupResId(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuGroupType;)I

    move-result v20

    const/16 v19, 0x7

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    const/16 v19, 0x8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 204
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 208
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 215
    .local v5, "decodedPhoneExtra":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 217
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 220
    .local v6, "dialMenuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mSupportsDial:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 222
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 223
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.DIAL"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "tel:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 230
    :goto_7
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 232
    .local v15, "sendSmsMenuItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mSupportsSms:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 234
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 235
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.SENDTO"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "smsto:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 242
    :goto_8
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, "addIntent":Landroid/content/Intent;
    const-string/jumbo v19, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v19, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 249
    .local v4, "addToContactsMenuItem":Landroid/view/MenuItem;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 250
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 253
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 193
    .end local v3    # "addIntent":Landroid/content/Intent;
    .end local v4    # "addToContactsMenuItem":Landroid/view/MenuItem;
    .end local v5    # "decodedPhoneExtra":Ljava/lang/String;
    .end local v6    # "dialMenuItem":Landroid/view/MenuItem;
    .end local v15    # "sendSmsMenuItem":Landroid/view/MenuItem;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 195
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 197
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 199
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 210
    :catch_0
    move-exception v10

    .line 212
    .local v10, "ignore":Ljava/io/UnsupportedEncodingException;
    move-object v5, v7

    .restart local v5    # "decodedPhoneExtra":Ljava/lang/String;
    goto/16 :goto_6

    .line 226
    .end local v10    # "ignore":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "dialMenuItem":Landroid/view/MenuItem;
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 238
    .restart local v15    # "sendSmsMenuItem":Landroid/view/MenuItem;
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 258
    .end local v5    # "decodedPhoneExtra":Ljava/lang/String;
    .end local v6    # "dialMenuItem":Landroid/view/MenuItem;
    .end local v15    # "sendSmsMenuItem":Landroid/view/MenuItem;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 259
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.VIEW"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mailto:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 262
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 267
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 268
    const-string/jumbo v8, ""

    .line 270
    .local v8, "geoExtra":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 275
    :goto_9
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 278
    .local v17, "viewMapMenuItem":Landroid/view/MenuItem;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 279
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.VIEW"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "geo:0,0?q="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 281
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 287
    .end local v8    # "geoExtra":Ljava/lang/String;
    .end local v17    # "viewMapMenuItem":Landroid/view/MenuItem;
    :pswitch_4
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->showShareLinkMenuItem()Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 296
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/browse/WebViewContextMenu$Copy;-><init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 299
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 302
    .local v13, "openLinkMenuItem":Landroid/view/MenuItem;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 303
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 305
    sget-object v19, Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/kingsoft/mail/browse/WebViewContextMenu$MenuType;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    new-instance v20, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/browse/WebViewContextMenu$Share;-><init>(Lcom/kingsoft/mail/browse/WebViewContextMenu;Ljava/lang/String;)V

    invoke-interface/range {v19 .. v20}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 272
    .end local v13    # "openLinkMenuItem":Landroid/view/MenuItem;
    .restart local v8    # "geoExtra":Ljava/lang/String;
    :catch_1
    move-exception v19

    goto/16 :goto_9

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 204
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/WebViewContextMenu;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/kingsoft/mail/browse/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
