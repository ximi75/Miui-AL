.class public Lcom/kingsoft/mail/adapter/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# static fields
.field public static final ACCOUNT:I = 0x4

.field public static final FOLDER_INBOX:I = 0x1

.field public static final FOLDER_OTHER:I = 0x3

.field public static final FOLDER_RECENT:I = 0x2

.field public static final INERT_HEADER:I = 0x0

.field private static final LAST_FIELD:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNSET:I = 0x0

.field public static final VIEW_ACCOUNT:I = 0x2

.field public static final VIEW_FOLDER:I = 0x0

.field public static final VIEW_HEADER:I = 0x1

.field public static final VIEW_WAITING_FOR_SYNC:I = 0x3


# instance fields
.field public final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private final mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field public final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFolderFullName:Landroid/text/SpannableStringBuilder;

.field public final mFolderType:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsEnabled:Z

.field public mIsSelected:Z

.field public final mResource:I

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p3, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p4, "folderType"    # I
    .param p5, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p6, "resource"    # I
    .param p7, "isCurrentAccount"    # Z
    .param p8, "bidiFormatter"    # Landroid/support/v4/text/BidiFormatter;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 137
    iput-object p3, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 138
    iput p4, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    .line 139
    iput-object p5, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 140
    iput p6, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mResource:I

    .line 141
    iput-boolean p7, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mIsSelected:Z

    .line 142
    invoke-interface {p2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    .line 143
    iput p1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    .line 144
    invoke-direct {p0}, Lcom/kingsoft/mail/adapter/DrawerItem;->calculateEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mIsEnabled:Z

    .line 145
    iput-object p8, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 146
    return-void
.end method

.method private accountToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[DrawerItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " VIEW_ACCOUNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 289
    iget v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 303
    sget-object v2, Lcom/kingsoft/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "DrawerItem.isItemEnabled() for invalid type %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 304
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 295
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 298
    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private folderToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[DrawerItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " VIEW_FOLDER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v1, ", mFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v1, ", mFolderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAccountView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 356
    check-cast v0, Lcom/kingsoft/mail/ui/AccountItemView;

    .line 361
    .local v0, "accountItemView":Lcom/kingsoft/mail/ui/AccountItemView;
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-boolean v3, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mIsSelected:Z

    iget v4, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mResource:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/kingsoft/mail/ui/AccountItemView;->bind(Lcom/kingsoft/mail/providers/Account;ZI)V

    .line 362
    const v2, 0x7f0c005b

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v2, v2, Lcom/kingsoft/mail/providers/Account;->color:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    return-object v0

    .line 358
    .end local v0    # "accountItemView":Lcom/kingsoft/mail/ui/AccountItemView;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040017

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AccountItemView;

    .restart local v0    # "accountItemView":Lcom/kingsoft/mail/ui/AccountItemView;
    goto :goto_0
.end method

.method private getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 420
    check-cast v0, Landroid/view/ViewGroup;

    .line 424
    .local v0, "emptyView":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 422
    .end local v0    # "emptyView":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "emptyView":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private getFolderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 398
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 399
    check-cast v0, Lcom/kingsoft/mail/ui/FolderItemView;

    .line 404
    .local v0, "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-virtual {v0, p0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->bind(Lcom/kingsoft/mail/adapter/DrawerItem;Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;)V

    .line 405
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const v2, 0x7f0c0118

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/mail/providers/Folder;->setFolderBlockColor(Lcom/kingsoft/mail/providers/Folder;Landroid/view/View;)V

    .line 406
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->setIcon(Lcom/kingsoft/mail/providers/Folder;)V

    .line 407
    return-object v0

    .line 401
    .end local v0    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040084

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderItemView;

    .restart local v0    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    goto :goto_0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 378
    check-cast v1, Landroid/widget/LinearLayout;

    .line 384
    .local v1, "ll":Landroid/widget/LinearLayout;
    :goto_0
    const v2, 0x7f0c01e7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    .local v0, "headerView":Landroid/widget/TextView;
    iget v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mResource:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 386
    return-object v1

    .line 381
    .end local v0    # "headerView":Landroid/widget/TextView;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .restart local v1    # "ll":Landroid/widget/LinearLayout;
    goto :goto_0
.end method

.method public static getViewTypes()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x4

    return v0
.end method

.method private headerToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[DrawerItem "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " VIEW_HEADER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v1, ", mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ofAccount(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;
    .locals 9
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "unreadCount"    # I
    .param p3, "isCurrentAccount"    # Z
    .param p4, "bidiFormatter"    # Landroid/support/v4/text/BidiFormatter;

    .prologue
    .line 184
    new-instance v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/mail/adapter/DrawerItem;-><init>(ILcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    return-object v0
.end method

.method public static ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;
    .locals 9
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "folderType"    # I
    .param p3, "bidiFormatter"    # Landroid/support/v4/text/BidiFormatter;

    .prologue
    const/4 v1, 0x0

    .line 159
    new-instance v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, v1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/mail/adapter/DrawerItem;-><init>(ILcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    return-object v0
.end method

.method public static ofHeader(Lcom/kingsoft/mail/ui/ControllableActivity;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;
    .locals 9
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p1, "resource"    # I
    .param p2, "bidiFormatter"    # Landroid/support/v4/text/BidiFormatter;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 206
    new-instance v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    const/4 v1, 0x1

    move-object v2, p0

    move-object v5, v3

    move v6, p1

    move v7, v4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/mail/adapter/DrawerItem;-><init>(ILcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    return-object v0
.end method

.method public static ofWaitView(Lcom/kingsoft/mail/ui/ControllableActivity;Landroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;
    .locals 9
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p1, "bidiFormatter"    # Landroid/support/v4/text/BidiFormatter;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 235
    new-instance v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    const/4 v1, 0x3

    const/4 v6, -0x1

    move-object v2, p0

    move-object v5, v3

    move v7, v4

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/mail/adapter/DrawerItem;-><init>(ILcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    return-object v0
.end method

.method private static waitToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "[DrawerItem VIEW_WAITING_FOR_SYNC ]"

    return-object v0
.end method


# virtual methods
.method public getFolderFullName()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderFullName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 249
    iget v1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 263
    sget-object v1, Lcom/kingsoft/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "DrawerItem.getView(%d) for an invalid type!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 251
    .end local v0    # "result":Landroid/view/View;
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/adapter/DrawerItem;->getFolderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0

    .line 254
    .end local v0    # "result":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/adapter/DrawerItem;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0

    .line 257
    .end local v0    # "result":Landroid/view/View;
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/adapter/DrawerItem;->getAccountView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 258
    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0

    .line 260
    .end local v0    # "result":Landroid/view/View;
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/adapter/DrawerItem;->getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 261
    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isHighlighted(Lcom/kingsoft/mail/utils/FolderUri;I)Z
    .locals 5
    .param p1, "currentFolder"    # Lcom/kingsoft/mail/utils/FolderUri;
    .param p2, "currentType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    iget v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 341
    sget-object v2, Lcom/kingsoft/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "DrawerItem.isHighlighted() for invalid type %d"

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 330
    :pswitch_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    if-eqz v2, :cond_0

    .line 331
    iget v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isItemEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mIsEnabled:Z

    return v0
.end method

.method public setFolderFullName(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "folderFullName"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderFullName:Landroid/text/SpannableStringBuilder;

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/mail/adapter/DrawerItem;->folderToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-direct {p0}, Lcom/kingsoft/mail/adapter/DrawerItem;->headerToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0}, Lcom/kingsoft/mail/adapter/DrawerItem;->accountToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-static {}, Lcom/kingsoft/mail/adapter/DrawerItem;->waitToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
