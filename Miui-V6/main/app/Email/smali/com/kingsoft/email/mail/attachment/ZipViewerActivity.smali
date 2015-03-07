.class public Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "ZipViewerActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$SortChoiceDialog;,
        Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/ui/BaseActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/kingsoft/email/mail/attachment/FileInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CMD_LOAD_DATA_DONE:I = 0x2

.field private static final CMD_LOAD_DATA_START:I = 0x1

.field private static final FI_SORT_DATE:I = 0x3

.field private static final FI_SORT_MIME:I = 0x1

.field private static final FI_SORT_NAME:I = 0x0

.field private static final FI_SORT_SIZE:I = 0x2

.field public static final KEY_ATTACHMENT_ID:Ljava/lang/String; = "attachmentId"

.field private static final KEY_ATTACHMENT_URI:Ljava/lang/String; = "attachmentUri"

.field private static final KEY_FI_SORT:Ljava/lang/String; = "fiSort"

.field public static final KEY_ZIPPED_PASSWORD:Ljava/lang/String; = "password"

.field private static final LATEST_SORT_CHOICE:Ljava/lang/String; = "latestSortChoice"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREF_FILENAME:Ljava/lang/String; = "ZipViewActivity"

.field private static final ZIPPED_LOADER:I = 0x0

.field public static final ZIP_PREFERENCE:Ljava/lang/String; = "ZipViewer"


# instance fields
.field private mActionBarView:Landroid/widget/LinearLayout;

.field private mAttId:J

.field private mAttUri:Landroid/net/Uri;

.field private mEmptyGroup:Landroid/widget/LinearLayout;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mSharedPrefrences:Landroid/content/SharedPreferences;

.field private mSortAlertDialog:Lmiui/app/AlertDialog;

.field private mSortBy:I

.field private mZipFilePassword:Ljava/lang/String;

.field private mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortBy:I

    .line 92
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$1;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mHandler:Landroid/os/Handler;

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getZippedFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getCompressedFileInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->sort(I)V

    return-void
.end method

.method private customizeActionbar()V
    .locals 8

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 432
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040033

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    .line 435
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    const v5, 0x7f0c00e3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 436
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    const v5, 0x7f0c00e5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 437
    .local v2, "subtitle":Landroid/widget/TextView;
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 438
    const v4, 0x7f1000ec

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 440
    const v4, 0x7f1000dd

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    const v5, 0x7f0c00e2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 443
    .local v1, "backIcon":Landroid/widget/ImageView;
    new-instance v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$3;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$3;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 452
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 453
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 455
    .end local v1    # "backIcon":Landroid/widget/ImageView;
    .end local v2    # "subtitle":Landroid/widget/TextView;
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private static getCompressedFileInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "prefix":Ljava/lang/String;
    const-string/jumbo v4, "rar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getRarFileInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 580
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 565
    .restart local v3    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "prefix":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 573
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unsupported Encoding Exception"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v1, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 574
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 569
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "prefix":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getZipFileInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    goto :goto_0

    .line 575
    .end local v3    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "File does not exist : "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v0, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 578
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getZippedFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attId"    # J
    .param p3, "attUri"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 246
    const/4 v9, 0x0

    .line 247
    .local v9, "zippedFileName":Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "contentUri"

    aput-object v3, v2, v11

    const-string/jumbo v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string/jumbo v0, "contentUri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 258
    .local v8, "idxUri":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 263
    .end local v8    # "idxUri":I
    :cond_0
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    const-string/jumbo v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 277
    :cond_2
    return-object v9

    .line 260
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 261
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 270
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    move-object v9, p3

    goto :goto_0
.end method

.method public static showUnzippedAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unzippedFilePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v4, "intent":Landroid/content/Intent;
    const v6, 0x80001

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    invoke-static {p2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "mime":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v3

    .line 544
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 545
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f10028a

    .line 548
    .local v1, "dialogMessage":I
    const v2, 0x7f10028b

    .line 549
    .local v2, "dialogTitle":I
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 550
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 551
    sget-object v6, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Couldn\'t find Activity for intent"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private sort(I)V
    .locals 4
    .param p1, "sortBy"    # I

    .prologue
    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 521
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "attachmentId"

    iget-wide v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 522
    const-string/jumbo v2, "attachmentUri"

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortBy:I

    if-eq v1, p1, :cond_0

    .line 525
    const-string/jumbo v1, "fiSort"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortBy:I

    .line 527
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->updateActionbarTitle(I)V

    .line 528
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 530
    :cond_0
    return-void

    .line 522
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateActionbarTitle(I)V
    .locals 5
    .param p1, "sortCmd"    # I

    .prologue
    const v4, 0x7f1000ec

    .line 476
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 478
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mActionBarView:Landroid/widget/LinearLayout;

    const v3, 0x7f0c00e5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 479
    .local v0, "subtitle":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 498
    .end local v0    # "subtitle":Landroid/widget/TextView;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 481
    .restart local v0    # "subtitle":Landroid/widget/TextView;
    .restart local v1    # "title":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const v2, 0x7f1000dc

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const v2, 0x7f1000dd

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 489
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const v2, 0x7f1000e0

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const v2, 0x7f1000de

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 291
    const-string/jumbo v2, "ZipViewActivity"

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "attachmentId"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J

    .line 295
    const-string/jumbo v2, "attachmentId"

    iget-wide v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    .line 298
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 299
    const-string/jumbo v2, "attachmentUri"

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mAttUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->customizeActionbar()V

    .line 304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilePassword:Ljava/lang/String;

    .line 306
    const v2, 0x7f0400bc

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->setContentView(I)V

    .line 307
    const v2, 0x7f0c025b

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mListView:Landroid/widget/ListView;

    .line 309
    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    .line 310
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    const v2, 0x7f0c00bf

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    .line 312
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 313
    const v2, 0x7f0c025d

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 314
    const v2, 0x7f0c025c

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 316
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v3, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 318
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 319
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$2;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 392
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100388

    invoke-virtual {v2, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const v2, 0x7f100253

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const v2, 0x7f100252

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    const v6, 0x7f100256

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const v6, 0x7f100254

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget-boolean v2, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isRestoreSortStateEabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "latestSortChoice"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    new-instance v6, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$SortChoiceDialog;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$SortChoiceDialog;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V

    invoke-virtual {v4, v5, v2, v6}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSortAlertDialog:Lmiui/app/AlertDialog;

    .line 405
    sget-boolean v2, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isRestoreSortStateEabled:Z

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "latestSortChoice"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->sort(I)V

    .line 408
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 392
    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;

    invoke-direct {v0, p0, p2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 460
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f120013

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 461
    const v2, 0x7f0c0261

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 462
    .local v1, "sortItem":Landroid/view/MenuItem;
    new-instance v2, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$4;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$4;-><init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 472
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onDestroy()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilePassword:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;>;"
    .local p2, "fileInfo":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;"
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->clear()V

    .line 591
    if-eqz p2, :cond_0

    .line 592
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    invoke-virtual {v0, p2}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->addAll(Ljava/util/Collection;)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/FileInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/kingsoft/email/mail/attachment/FileInfo;>;>;"
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilesAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->clear()V

    .line 600
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 413
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 414
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 417
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 418
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 419
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 425
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 426
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 427
    return-void
.end method

.method public readPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilePassword:Ljava/lang/String;

    return-object v0
.end method

.method public writePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;->mZipFilePassword:Ljava/lang/String;

    .line 282
    return-void
.end method
