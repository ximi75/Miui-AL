.class public Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessageHeaderDetailsDialogFragment.java"


# static fields
.field private static final ARG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ARG_ADDRESS_CACHE:Ljava/lang/String; = "addresses"

.field private static final ARG_BCC:Ljava/lang/String; = "bcc"

.field private static final ARG_CC:Ljava/lang/String; = "cc"

.field private static final ARG_FROM:Ljava/lang/String; = "from"

.field private static final ARG_RECEIVED_TIME:Ljava/lang/String; = "received-timestamp"

.field private static final ARG_REPLY_TO:Ljava/lang/String; = "replyto"

.field private static final ARG_TO:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 5
    .param p0, "addresses"    # Landroid/os/Bundle;
    .param p2, "emails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 96
    .local v1, "email":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/util/Map;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "email":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;
    .locals 4
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "replyTo"    # [Ljava/lang/String;
    .param p4, "to"    # [Ljava/lang/String;
    .param p5, "cc"    # [Ljava/lang/String;
    .param p6, "bcc"    # [Ljava/lang/String;
    .param p7, "receivedTimestamp"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/providers/Account;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    new-instance v2, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;

    invoke-direct {v2}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;-><init>()V

    .line 71
    .local v2, "f":Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "account"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "addresses":Landroid/os/Bundle;
    invoke-static {v0, p0, p2}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V

    .line 76
    invoke-static {v0, p0, p3}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V

    .line 77
    invoke-static {v0, p0, p4}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V

    .line 78
    invoke-static {v0, p0, p5}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V

    .line 79
    invoke-static {v0, p0, p6}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->addAddressesToBundle(Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)V

    .line 80
    const-string/jumbo v3, "addresses"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v3, "from"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    const-string/jumbo v3, "replyto"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    const-string/jumbo v3, "to"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "cc"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    const-string/jumbo v3, "bcc"

    invoke-virtual {v1, v3, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    const-string/jumbo v3, "received-timestamp"

    invoke-virtual {v1, v3, p7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19
    .param p1, "onSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    .line 103
    .local v16, "context":Landroid/content/Context;
    new-instance v15, Lmiui/app/AlertDialog$Builder;

    invoke-direct/range {v15 .. v16}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v15, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->inflateExpandedDetails(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, "expandedDetails":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    .line 110
    .local v14, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "addresses"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 111
    .local v13, "addresses":Landroid/os/Bundle;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v4, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 113
    .local v17, "email":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Address;

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    .end local v17    # "email":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v5, "account"

    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/providers/Account;

    const/4 v6, 0x0

    const-string/jumbo v7, "from"

    invoke-virtual {v14, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "replyto"

    invoke-virtual {v14, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "to"

    invoke-virtual {v14, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "cc"

    invoke-virtual {v14, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "bcc"

    invoke-virtual {v14, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "received-timestamp"

    invoke-virtual {v14, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderExpandedDetails(Landroid/content/res/Resources;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 122
    const v1, 0x7f0c01b1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v15, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f10026e

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v15}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
