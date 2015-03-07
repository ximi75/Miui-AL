.class public Lcom/kingsoft/mail/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACTION_BAR_UNREAD_STYLE:Landroid/text/style/CharacterStyle;

.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

.field private static final APP_VERSION_QUERY_PARAMETER:Ljava/lang/String; = "appVersion"

.field public static final ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field public static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_NETEASE_ATTDOWN:Ljava/lang/String; = "netease-attDown"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final ELIDED_TEXT_ELEMENT_NAME_DIV:Ljava/lang/String; = "div"

.field public static final ENABLE_CONV_LOAD_TIMER:Z = false

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_ACCOUNT_URI:Ljava/lang/String; = "accountUri"

.field public static final EXTRA_COMPOSE_URI:Ljava/lang/String; = "composeUri"

.field public static final EXTRA_CONVERSATION:Ljava/lang/String; = "conversationUri"

.field public static final EXTRA_FILTER:Ljava/lang/String; = "filter"

.field public static final EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field public static final EXTRA_FOLDER_URI:Ljava/lang/String; = "folderUri"

.field public static final EXTRA_FROM_CONVERSATION:Ljava/lang/String; = "fromeConversation"

.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_MOVE_TO:Ljava/lang/String; = "moveto"

.field public static final EXTRA_PRE_VIEWMODE:Ljava/lang/String; = "premode"

.field private static final FILE_EXTENSION_MAX_CHARS:I = 0x4

.field private static final FOLDER_URI_QUERY_PARAMETER:Ljava/lang/String; = "folderUri"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAILTO_SCHEME:Ljava/lang/String; = "mailto"

.field private static final SCALED_SCREENSHOT_MAX_HEIGHT_WIDTH:I = 0x258

.field public static final SENDER_LIST_SEPARATOR:Ljava/lang/Character;

.field public static final SENDER_LIST_TOKEN_ELIDED:Ljava/lang/String; = "e"

.field public static final SENDER_LIST_TOKEN_LITERAL:Ljava/lang/String; = "l"

.field public static final SENDER_LIST_TOKEN_NUM_DRAFTS:Ljava/lang/String; = "d"

.field public static final SENDER_LIST_TOKEN_NUM_MESSAGES:Ljava/lang/String; = "n"

.field public static final SENDER_LIST_TOKEN_SENDING:Ljava/lang/String; = "s"

.field public static final SENDER_LIST_TOKEN_SEND_FAILED:Ljava/lang/String; = "f"

.field private static final SMART_HELP_LINK_PARAMETER_NAME:Ljava/lang/String; = "p"

.field private static final SMART_LINK_APP_VERSION:Ljava/lang/String; = "version"

.field public static final STARTUP_TIME:I = 0xbb8

.field private static final STYLE_ATTR:[I

.field public static final VIEW_DEBUGGING_TAG:Ljava/lang/String; = "MailBlankFragment"

.field public static gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

.field public static final sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

.field private static sDefaultFolderBackgroundColor:I

.field private static sDraftPluralString:Ljava/lang/CharSequence;

.field private static sDraftSingularString:Ljava/lang/CharSequence;

.field private static sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sMaxUnreadCount:I

.field private static sMeString:Ljava/lang/CharSequence;

.field private static final sPriorityToLength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sReadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sSendFailedString:Ljava/lang/CharSequence;

.field public static sSenderFragments:[Ljava/lang/String;

.field public static final sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static sSendingString:Ljava/lang/CharSequence;

.field private static sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sUnreadText:Ljava/lang/String;

.field private static sUseFolderListFragmentTransition:I

.field private static sVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 111
    const-class v0, Lcom/kingsoft/mail/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/utils/Utils;->$assertionsDisabled:Z

    .line 116
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->sPriorityToLength:Ljava/util/Map;

    .line 123
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    .line 124
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->sSenderFragments:[Ljava/lang/String;

    .line 160
    sput v4, Lcom/kingsoft/mail/utils/Utils;->sVersionCode:I

    .line 167
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/kingsoft/mail/perf/SimpleTimer;

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/perf/SimpleTimer;-><init>(Z)V

    const-string/jumbo v3, "ConvLoadTimer"

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/perf/SimpleTimer;->withSessionName(Ljava/lang/String;)Lcom/kingsoft/mail/perf/SimpleTimer;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

    .line 173
    new-array v0, v1, [I

    const v3, 0x10100d4

    aput v3, v0, v2

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->STYLE_ATTR:[I

    .line 182
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v3, "class"

    invoke-direct {v0, v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 264
    sput-object v5, Lcom/kingsoft/mail/utils/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 273
    sput v4, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    .line 274
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->ACTION_BAR_UNREAD_STYLE:Landroid/text/style/CharacterStyle;

    .line 276
    sput v4, Lcom/kingsoft/mail/utils/Utils;->sDefaultFolderBackgroundColor:I

    .line 277
    sput v4, Lcom/kingsoft/mail/utils/Utils;->sUseFolderListFragmentTransition:I

    .line 1610
    sput-object v5, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/utils/Utils;->executeConversationCursorCommand(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static addParamsToUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 896
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 897
    .local v1, "versionCode":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 898
    const-string/jumbo v2, "version"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 902
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V
    .locals 5
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fragment"    # Ljava/lang/String;
    .param p2, "style"    # Landroid/text/style/CharacterStyle;
    .param p3, "withSpaces"    # Z

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 562
    if-eqz p3, :cond_0

    .line 563
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 564
    .local v0, "pos":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 565
    invoke-static {p2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 587
    :goto_0
    return-void

    .line 568
    .end local v0    # "pos":I
    :cond_0
    const/4 v1, 0x0

    .line 570
    .local v1, "start":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 571
    .restart local v0    # "pos":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 572
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, v3}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    goto :goto_0

    .line 575
    :cond_2
    add-int/2addr v0, v1

    .line 576
    if-ge v1, v0, :cond_3

    .line 577
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, v3}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 578
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 580
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0
.end method

.method public static appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1402
    const/4 v0, 0x0

    .line 1405
    .local v0, "appVersion":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1407
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1414
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "appVersion"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1408
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Couldn\'t find our own PackageInfo"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1410
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 1411
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Package manager has died"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "removeEmptyDoubleQuotes"    # Z

    .prologue
    .line 692
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\"\""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string/jumbo v0, ""

    .line 626
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertHtmlToPlainText(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "parser"    # Lcom/google/android/mail/common/html/parser/HtmlParser;
    .param p2, "builder"    # Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    .prologue
    .line 631
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string/jumbo v0, ""

    .line 634
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createForwardIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1397
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->createForwardIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1398
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "isReplyAll"    # Z

    .prologue
    .line 1387
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1389
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "folderUri"    # Landroid/net/Uri;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 790
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 791
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 792
    iget-object v3, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 794
    .local v2, "versionedUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "folderUri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 796
    .local v1, "uniqueUri":Landroid/net/Uri;
    iget-object v3, p3, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string/jumbo v3, "account"

    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string/jumbo v3, "folderUri"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 799
    const-string/jumbo v3, "conversationUri"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 800
    const-class v3, Lcom/kingsoft/mail/utils/Utils;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 801
    return-object v0
.end method

.method public static createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderUri"    # Landroid/net/Uri;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 813
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 814
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Utils.createViewFolderIntent(%s,%s): Bad input"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 816
    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    .line 818
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 821
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string/jumbo v1, "account"

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string/jumbo v1, "folderUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createViewInboxIntent(Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;
    .locals 5
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 834
    if-nez p0, :cond_0

    .line 835
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Utils.createViewInboxIntent(%s): Bad input"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 836
    const/4 v0, 0x0

    .line 843
    :goto_0
    return-object v0

    .line 838
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 841
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string/jumbo v1, "account"

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static divertMailtoUri(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 1429
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "mailto"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->composeToAddress(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    .line 1432
    const/4 v1, 0x1

    .line 1434
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static dumpFragment(Landroid/app/Fragment;)Ljava/lang/String;
    .locals 5
    .param p0, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1206
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1207
    .local v0, "sw":Ljava/io/StringWriter;
    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpViewTree(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1212
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/Utils;->dumpViewTree(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method private static dumpViewTree(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 11
    .param p0, "g"    # Landroid/view/ViewGroup;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1216
    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "%sVIEWGROUP: %s childCount=%s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p0, v5, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "childPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1219
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1221
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/Utils;->dumpViewTree(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 1218
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "%sCHILD #%s: %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1226
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxCharacters"    # I

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, "length":I
    if-ge v2, p1, :cond_0

    .line 241
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 228
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 230
    .local v3, "realMax":I
    const-string/jumbo v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "index":I
    const-string/jumbo v0, "\u2026"

    .line 232
    .local v0, "extension":Ljava/lang/String;
    if-ltz v1, :cond_1

    .line 234
    sub-int v4, v2, v1

    const/4 v5, 0x5

    if-gt v4, v5, :cond_1

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 239
    if-gez v3, :cond_2

    .line 240
    const/4 v3, 0x0

    .line 241
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static enableHardwareLayer(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 1343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1345
    invoke-virtual {p0}, Landroid/view/View;->buildLayer()V

    .line 1347
    :cond_0
    return-void
.end method

.method public static ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 253
    if-nez p0, :cond_1

    .line 254
    const/4 p0, 0x0

    .line 259
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 256
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static executeConversationCursorCommand(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "request"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1237
    invoke-interface {p0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1238
    .local v0, "response":Landroid/os/Bundle;
    const-string/jumbo v2, "failed"

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "result":Ljava/lang/String;
    const-string/jumbo v2, "ok"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static formatPlural(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "count"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    .local v0, "formatString":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAndroidAccountCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1595
    const/4 v0, 0x0

    .line 1597
    .local v0, "accountNumber":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1599
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 1600
    .local v4, "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v5, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1601
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iget-object v6, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1603
    .local v1, "amAccounts":[Landroid/accounts/Account;
    array-length v5, v1

    add-int/2addr v0, v5

    .line 1604
    iget-object v5, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1607
    .end local v1    # "amAccounts":[Landroid/accounts/Account;
    .end local v4    # "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_1
    return v0
.end method

.method public static getConversationId(Lcom/kingsoft/mail/browse/ConversationCursor;)J
    .locals 2
    .param p0, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getConversationUri(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultFolderBackgroundColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1358
    sget v0, Lcom/kingsoft/mail/utils/Utils;->sDefaultFolderBackgroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/utils/Utils;->sDefaultFolderBackgroundColor:I

    .line 1362
    :cond_0
    sget v0, Lcom/kingsoft/mail/utils/Utils;->sDefaultFolderBackgroundColor:I

    return v0
.end method

.method public static getDisplayListRightEdgeEffect(ZZI)Z
    .locals 1
    .param p0, "tabletDevice"    # Z
    .param p1, "listCollapsible"    # Z
    .param p2, "viewMode"    # I

    .prologue
    .line 601
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1092
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 1093
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :cond_0
    return-object v0

    .line 1090
    .end local v1    # "index":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/kingsoft/mail/providers/Folder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderUri"    # Landroid/net/Uri;
    .param p2, "allowHidden"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1447
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "allowHiddenFolders"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1453
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1456
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1467
    :goto_0
    return-object v3

    .line 1461
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    new-instance v3, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v3, v6}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFolderUnreadDisplayCount(Lcom/kingsoft/mail/providers/Folder;)I
    .locals 1
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1372
    if-eqz p0, :cond_1

    .line 1373
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Folder;->isUnreadCountHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    .line 1379
    :goto_0
    return v0

    .line 1376
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    goto :goto_0

    .line 1379
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/String;

    .prologue
    .line 641
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    return-object v0
.end method

.method private static getHtmlTree(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "parser"    # Lcom/google/android/mail/common/html/parser/HtmlParser;
    .param p2, "builder"    # Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    .prologue
    .line 649
    invoke-virtual {p1, p0}, Lcom/google/android/mail/common/html/parser/HtmlParser;->parse(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;

    move-result-object v0

    .line 650
    .local v0, "doc":Lcom/google/android/mail/common/html/parser/HtmlDocument;
    invoke-virtual {v0, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    .line 652
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->getTree()Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    return-object v1
.end method

.method public static getHtmlWithoutNetease(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 1526
    if-nez p0, :cond_1

    .line 1527
    const-string/jumbo v6, ""

    .line 1587
    :cond_0
    :goto_0
    return-object v6

    .line 1530
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v11

    .line 1531
    .local v11, "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    invoke-virtual {v11}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNodesList()Ljava/util/List;

    move-result-object v9

    .line 1532
    .local v9, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .local v7, "newNodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const-string/jumbo v6, ""

    .line 1534
    .local v6, "newHtml":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1535
    .local v3, "hadleFlag":Z
    const/4 v2, 0x0

    .line 1536
    .local v2, "divDepth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_9

    .line 1537
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 1538
    .local v8, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v12, v8, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v12, :cond_6

    move-object v10, v8

    .line 1539
    check-cast v10, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1540
    .local v10, "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    const-string/jumbo v12, "div"

    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1541
    if-lez v2, :cond_4

    .line 1542
    add-int/lit8 v2, v2, 0x1

    .line 1556
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 1557
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    .end local v10    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1544
    .restart local v10    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_4
    sget-object v12, Lcom/kingsoft/mail/utils/Utils;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v10, v12}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 1546
    .local v1, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 1547
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v12, "netease-attDown"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1549
    add-int/lit8 v2, v2, 0x1

    .line 1550
    const/4 v3, 0x1

    .line 1551
    goto :goto_2

    .line 1559
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_6
    instance-of v12, v8, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v12, :cond_8

    move-object v10, v8

    .line 1560
    check-cast v10, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .line 1561
    .local v10, "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    const-string/jumbo v12, "div"

    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1562
    if-lez v2, :cond_7

    .line 1563
    add-int/lit8 v2, v2, -0x1

    .line 1564
    if-eqz v2, :cond_3

    .line 1569
    :cond_7
    if-nez v2, :cond_3

    .line 1570
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1573
    .end local v10    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    :cond_8
    if-nez v2, :cond_3

    .line 1574
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1579
    .end local v8    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_9
    if-eqz v3, :cond_a

    .line 1580
    const/4 v4, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 1581
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    invoke-virtual {v12}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toOriginalHTML()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1580
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1584
    :cond_a
    move-object v6, p0

    goto/16 :goto_0
.end method

.method public static getReducedSizeBitmap(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;

    .prologue
    .line 1049
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1050
    .local v2, "activityWindow":Landroid/view/Window;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1051
    .local v3, "currentView":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 1052
    .local v12, "rootView":Landroid/view/View;
    :goto_1
    if-eqz v12, :cond_2

    .line 1053
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1054
    invoke-virtual {v12}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1056
    .local v4, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 1057
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1058
    .local v7, "originalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v8, v0

    .line 1059
    .local v8, "originalHeight":D
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v10, v0

    .line 1060
    .local v10, "originalWidth":D
    const/16 v5, 0x258

    .line 1061
    .local v5, "newHeight":I
    const/16 v6, 0x258

    .line 1063
    .local v6, "newWidth":I
    int-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v15, v19, v10

    .line 1064
    .local v15, "scaleX":D
    int-to-double v0, v5

    move-wide/from16 v19, v0

    div-double v17, v19, v8

    .line 1065
    .local v17, "scaleY":D
    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 1066
    .local v13, "scale":D
    mul-double v19, v10, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v6, v0

    .line 1067
    mul-double v19, v8, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v5, v0

    .line 1068
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v7, v6, v5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1071
    .end local v4    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v5    # "newHeight":I
    .end local v6    # "newWidth":I
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "originalHeight":D
    .end local v10    # "originalWidth":D
    .end local v13    # "scale":D
    .end local v15    # "scaleX":D
    .end local v17    # "scaleY":D
    :goto_2
    return-object v19

    .line 1050
    .end local v3    # "currentView":Landroid/view/View;
    .end local v12    # "rootView":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1051
    .restart local v3    # "currentView":Landroid/view/View;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1071
    .restart local v12    # "rootView":Landroid/view/View;
    :cond_2
    const/16 v19, 0x0

    goto :goto_2
.end method

.method public static declared-synchronized getSenderSnippet(Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;ILandroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)V
    .locals 41
    .param p0, "instructions"    # Ljava/lang/String;
    .param p1, "senderBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "statusBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "maxChars"    # I
    .param p4, "unreadStyle"    # Landroid/text/style/CharacterStyle;
    .param p5, "readStyle"    # Landroid/text/style/CharacterStyle;
    .param p6, "draftsStyle"    # Landroid/text/style/CharacterStyle;
    .param p7, "meString"    # Ljava/lang/CharSequence;
    .param p8, "draftString"    # Ljava/lang/CharSequence;
    .param p9, "draftPluralString"    # Ljava/lang/CharSequence;
    .param p10, "sendingString"    # Ljava/lang/CharSequence;
    .param p11, "sendFailedString"    # Ljava/lang/CharSequence;
    .param p12, "forceAllUnread"    # Z
    .param p13, "forceAllRead"    # Z
    .param p14, "allowDraft"    # Z

    .prologue
    .line 361
    const-class v37, Lcom/kingsoft/mail/utils/Utils;

    monitor-enter v37

    :try_start_0
    sget-boolean v36, Lcom/kingsoft/mail/utils/Utils;->$assertionsDisabled:Z

    if-nez v36, :cond_0

    if-eqz p12, :cond_0

    if-eqz p13, :cond_0

    new-instance v36, Ljava/lang/AssertionError;

    invoke-direct/range {v36 .. v36}, Ljava/lang/AssertionError;-><init>()V

    throw v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v36

    monitor-exit v37

    throw v36

    .line 362
    :cond_0
    if-nez p12, :cond_1

    if-eqz p13, :cond_2

    :cond_1
    const/16 v34, 0x1

    .line 363
    .local v34, "unreadStatusIsForced":Z
    :goto_0
    move/from16 v8, p12

    .line 368
    .local v8, "forcedUnreadStatus":Z
    :try_start_1
    sget-object v30, Lcom/kingsoft/mail/utils/Utils;->sPriorityToLength:Ljava/util/Map;

    .line 369
    .local v30, "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->clear()V

    .line 371
    const/high16 v16, -0x80000000

    .line 372
    .local v16, "maxFoundPriority":I
    const/16 v25, 0x0

    .line 373
    .local v25, "numMessages":I
    const/16 v21, 0x0

    .line 374
    .local v21, "numDrafts":I
    const-string/jumbo v5, ""

    .line 375
    .local v5, "draftsFragment":Ljava/lang/CharSequence;
    const-string/jumbo v32, ""

    .line 376
    .local v32, "sendingFragment":Ljava/lang/CharSequence;
    const-string/jumbo v31, ""

    .line 378
    .local v31, "sendFailedFragment":Ljava/lang/CharSequence;
    sget-object v36, Lcom/kingsoft/mail/utils/Utils;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 379
    const/16 v23, 0x0

    .line 380
    .local v23, "numFragments":I
    sget-object v10, Lcom/kingsoft/mail/utils/Utils;->sSenderFragments:[Ljava/lang/String;

    .line 381
    .local v10, "fragments":[Ljava/lang/String;
    array-length v4, v10

    .local v4, "currentSize":I
    move/from16 v24, v23

    .line 382
    .end local v23    # "numFragments":I
    .local v24, "numFragments":I
    :goto_1
    sget-object v36, Lcom/kingsoft/mail/utils/Utils;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual/range {v36 .. v36}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 383
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "numFragments":I
    .restart local v23    # "numFragments":I
    sget-object v36, Lcom/kingsoft/mail/utils/Utils;->sSenderListSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual/range {v36 .. v36}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v10, v24

    .line 384
    move/from16 v0, v23

    if-ne v0, v4, :cond_2d

    .line 385
    mul-int/lit8 v36, v4, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    sput-object v36, Lcom/kingsoft/mail/utils/Utils;->sSenderFragments:[Ljava/lang/String;

    .line 386
    const/16 v36, 0x0

    sget-object v38, Lcom/kingsoft/mail/utils/Utils;->sSenderFragments:[Ljava/lang/String;

    const/16 v39, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v10, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    mul-int/lit8 v4, v4, 0x2

    .line 388
    sget-object v10, Lcom/kingsoft/mail/utils/Utils;->sSenderFragments:[Ljava/lang/String;

    move/from16 v24, v23

    .end local v23    # "numFragments":I
    .restart local v24    # "numFragments":I
    goto :goto_1

    .line 362
    .end local v4    # "currentSize":I
    .end local v5    # "draftsFragment":Ljava/lang/CharSequence;
    .end local v8    # "forcedUnreadStatus":Z
    .end local v10    # "fragments":[Ljava/lang/String;
    .end local v16    # "maxFoundPriority":I
    .end local v21    # "numDrafts":I
    .end local v24    # "numFragments":I
    .end local v25    # "numMessages":I
    .end local v30    # "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v31    # "sendFailedFragment":Ljava/lang/CharSequence;
    .end local v32    # "sendingFragment":Ljava/lang/CharSequence;
    .end local v34    # "unreadStatusIsForced":Z
    :cond_2
    const/16 v34, 0x0

    goto :goto_0

    .line 392
    .restart local v4    # "currentSize":I
    .restart local v5    # "draftsFragment":Ljava/lang/CharSequence;
    .restart local v8    # "forcedUnreadStatus":Z
    .restart local v10    # "fragments":[Ljava/lang/String;
    .restart local v16    # "maxFoundPriority":I
    .restart local v21    # "numDrafts":I
    .restart local v24    # "numFragments":I
    .restart local v25    # "numMessages":I
    .restart local v30    # "priorityToLength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v31    # "sendFailedFragment":Ljava/lang/CharSequence;
    .restart local v32    # "sendingFragment":Ljava/lang/CharSequence;
    .restart local v34    # "unreadStatusIsForced":Z
    :cond_3
    const/4 v11, 0x0

    .local v11, "i":I
    move v12, v11

    .end local v11    # "i":I
    .local v12, "i":I
    :goto_2
    move/from16 v0, v24

    if-ge v12, v0, :cond_e

    .line 393
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-object v9, v10, v12

    .line 394
    .local v9, "fragment0":Ljava/lang/String;
    const-string/jumbo v36, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    :cond_4
    :goto_3
    move v12, v11

    .line 421
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_2

    .line 396
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_5
    const-string/jumbo v36, "e"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_4

    .line 398
    const-string/jumbo v36, "n"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 399
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-object v36, v10, v11

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move v11, v12

    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_3

    .line 400
    :cond_6
    const-string/jumbo v36, "d"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 401
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-object v22, v10, v11

    .line 402
    .local v22, "numDraftsString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 403
    const/16 v36, 0x1

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    move-object/from16 v5, p8

    :goto_4
    move v11, v12

    .line 405
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_3

    .line 403
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_7
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, " ("

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, ")"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 405
    .end local v12    # "i":I
    .end local v22    # "numDraftsString":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_8
    const-string/jumbo v36, "l"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 406
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-object v36, v10, v11

    invoke-static/range {v36 .. v36}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    .end local v9    # "fragment0":Ljava/lang/String;
    :cond_9
    :goto_5
    monitor-exit v37

    return-void

    .line 408
    .end local v12    # "i":I
    .restart local v9    # "fragment0":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_a
    :try_start_2
    const-string/jumbo v36, "s"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 409
    move-object/from16 v32, p10

    goto/16 :goto_3

    .line 410
    :cond_b
    const-string/jumbo v36, "f"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 411
    move-object/from16 v31, p11

    goto/16 :goto_3

    .line 413
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-object v29, v10, v11

    .line 414
    .local v29, "priorityString":Ljava/lang/String;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-object v18, v10, v12

    .line 415
    .local v18, "nameString":Ljava/lang/CharSequence;
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v36

    if-nez v36, :cond_d

    .line 416
    move-object/from16 v18, p7

    .line 417
    :cond_d
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 418
    .local v28, "priority":I
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_3

    .line 422
    .end local v9    # "fragment0":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v18    # "nameString":Ljava/lang/CharSequence;
    .end local v28    # "priority":I
    .end local v29    # "priorityString":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_e
    if-eqz v25, :cond_1b

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, " \u00a0"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    add-int v38, v25, v21

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 426
    .local v26, "numMessagesFragment":Ljava/lang/String;
    :goto_6
    const/4 v6, 0x0

    .line 427
    .local v6, "fixedFragment":Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x0

    .line 428
    .local v7, "fixedFragmentLength":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v36

    if-eqz v36, :cond_f

    if-eqz p14, :cond_f

    .line 429
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 430
    .restart local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    if-eqz p6, :cond_f

    .line 432
    invoke-static/range {p6 .. p6}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v36

    const/16 v38, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v39

    const/16 v40, 0x21

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 436
    :cond_f
    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v36

    if-eqz v36, :cond_12

    .line 437
    if-nez v6, :cond_10

    .line 438
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 440
    .restart local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    :cond_10
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v36

    if-eqz v36, :cond_11

    .line 441
    const-string/jumbo v36, ", "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 442
    :cond_11
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 444
    :cond_12
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v36

    if-eqz v36, :cond_15

    .line 445
    if-nez v6, :cond_13

    .line 446
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 448
    .restart local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    :cond_13
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v36

    if-eqz v36, :cond_14

    .line 449
    const-string/jumbo v36, ", "

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 450
    :cond_14
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 453
    :cond_15
    if-eqz v6, :cond_16

    .line 454
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 456
    :cond_16
    sub-int p3, p3, v7

    .line 458
    const/16 v17, -0x1

    .line 459
    .local v17, "maxPriorityToInclude":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v20

    .line 460
    .local v20, "numCharsUsed":I
    const/16 v27, 0x0

    .line 461
    .local v27, "numSendersUsed":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_18

    .line 462
    add-int/lit8 v36, v17, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1d

    .line 463
    add-int/lit8 v36, v17, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v15, v20, v36

    .line 464
    .local v15, "length":I
    if-lez v20, :cond_17

    .line 465
    add-int/lit8 v15, v15, 0x2

    .line 469
    :cond_17
    move/from16 v0, p3

    if-le v15, v0, :cond_1c

    const/16 v36, 0x2

    move/from16 v0, v27

    move/from16 v1, v36

    if-lt v0, v1, :cond_1c

    .line 478
    .end local v15    # "length":I
    :cond_18
    const/16 v19, 0x0

    .line 479
    .local v19, "numCharsToRemovePerWord":I
    move/from16 v0, v20

    move/from16 v1, p3

    if-le v0, v1, :cond_19

    .line 480
    sub-int v36, v20, p3

    div-int v19, v36, v27

    .line 483
    :cond_19
    const/4 v13, 0x0

    .line 484
    .local v13, "lastFragment":Ljava/lang/String;
    const/4 v14, 0x0

    .line 485
    .local v14, "lastStyle":Landroid/text/style/CharacterStyle;
    const/4 v11, 0x0

    .end local v12    # "i":I
    .restart local v11    # "i":I
    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    :goto_8
    move/from16 v0, v24

    if-ge v12, v0, :cond_2b

    .line 486
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-object v9, v10, v12

    .line 487
    .restart local v9    # "fragment0":Ljava/lang/String;
    const-string/jumbo v36, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1e

    :cond_1a
    :goto_9
    move v12, v11

    .line 541
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_8

    .line 422
    .end local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    .end local v7    # "fixedFragmentLength":I
    .end local v9    # "fragment0":Ljava/lang/String;
    .end local v13    # "lastFragment":Ljava/lang/String;
    .end local v14    # "lastStyle":Landroid/text/style/CharacterStyle;
    .end local v17    # "maxPriorityToInclude":I
    .end local v19    # "numCharsToRemovePerWord":I
    .end local v20    # "numCharsUsed":I
    .end local v26    # "numMessagesFragment":Ljava/lang/String;
    .end local v27    # "numSendersUsed":I
    :cond_1b
    const-string/jumbo v26, ""

    goto/16 :goto_6

    .line 472
    .restart local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    .restart local v7    # "fixedFragmentLength":I
    .restart local v15    # "length":I
    .restart local v17    # "maxPriorityToInclude":I
    .restart local v20    # "numCharsUsed":I
    .restart local v26    # "numMessagesFragment":Ljava/lang/String;
    .restart local v27    # "numSendersUsed":I
    :cond_1c
    move/from16 v20, v15

    .line 473
    add-int/lit8 v27, v27, 0x1

    .line 475
    .end local v15    # "length":I
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 489
    .end local v12    # "i":I
    .restart local v9    # "fragment0":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "lastFragment":Ljava/lang/String;
    .restart local v14    # "lastStyle":Landroid/text/style/CharacterStyle;
    .restart local v19    # "numCharsToRemovePerWord":I
    :cond_1e
    const-string/jumbo v36, "e"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20

    .line 490
    if-eqz v13, :cond_1f

    .line 491
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-static {v0, v13, v14, v1}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 492
    const-string/jumbo v36, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 493
    const-string/jumbo v36, ".."

    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-static {v0, v1, v14, v2}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 494
    const-string/jumbo v36, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 496
    :cond_1f
    const/4 v13, 0x0

    goto :goto_9

    .line 497
    :cond_20
    const-string/jumbo v36, "n"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_21

    .line 498
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 499
    :cond_21
    const-string/jumbo v36, "d"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 500
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 501
    :cond_22
    const-string/jumbo v36, "s"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1a

    .line 502
    const-string/jumbo v36, "f"

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1a

    .line 504
    move-object/from16 v35, v9

    .line 505
    .local v35, "unreadString":Ljava/lang/String;
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-object v29, v10, v11

    .line 506
    .restart local v29    # "priorityString":Ljava/lang/String;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-object v18, v10, v12

    .line 507
    .local v18, "nameString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_25

    .line 508
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 512
    :goto_a
    if-eqz v19, :cond_23

    .line 513
    const/16 v36, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v38

    sub-int v38, v38, v19

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 516
    :cond_23
    if-eqz v34, :cond_26

    move/from16 v33, v8

    .line 518
    .local v33, "unread":Z
    :goto_b
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 519
    .restart local v28    # "priority":I
    move/from16 v0, v28

    move/from16 v1, v17

    if-gt v0, v1, :cond_29

    .line 520
    if-eqz v13, :cond_24

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_24

    .line 521
    const-string/jumbo v36, ","

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-static {v0, v1, v14, v2}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 523
    const-string/jumbo v36, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    :cond_24
    move-object/from16 v13, v18

    .line 526
    if-eqz v33, :cond_28

    move-object/from16 v14, p4

    :goto_c
    goto/16 :goto_9

    .line 510
    .end local v28    # "priority":I
    .end local v33    # "unread":Z
    :cond_25
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_a

    .line 516
    :cond_26
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_27

    const/16 v33, 0x1

    goto :goto_b

    :cond_27
    const/16 v33, 0x0

    goto :goto_b

    .restart local v28    # "priority":I
    .restart local v33    # "unread":Z
    :cond_28
    move-object/from16 v14, p5

    .line 526
    goto :goto_c

    .line 528
    :cond_29
    if-eqz v13, :cond_2a

    .line 529
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-static {v0, v13, v14, v1}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 534
    const-string/jumbo v36, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 535
    const-string/jumbo v36, ".."

    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-static {v0, v1, v14, v2}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 536
    const-string/jumbo v36, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 538
    :cond_2a
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 542
    .end local v9    # "fragment0":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v18    # "nameString":Ljava/lang/String;
    .end local v28    # "priority":I
    .end local v29    # "priorityString":Ljava/lang/String;
    .end local v33    # "unread":Z
    .end local v35    # "unreadString":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_2b
    if-eqz v13, :cond_2c

    .line 543
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-static {v0, v13, v14, v1}, Lcom/kingsoft/mail/utils/Utils;->addStyledFragment(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroid/text/style/CharacterStyle;Z)V

    .line 545
    :cond_2c
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 546
    if-eqz v7, :cond_9

    .line 547
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .end local v6    # "fixedFragment":Landroid/text/SpannableStringBuilder;
    .end local v7    # "fixedFragmentLength":I
    .end local v12    # "i":I
    .end local v13    # "lastFragment":Ljava/lang/String;
    .end local v14    # "lastStyle":Landroid/text/style/CharacterStyle;
    .end local v17    # "maxPriorityToInclude":I
    .end local v19    # "numCharsToRemovePerWord":I
    .end local v20    # "numCharsUsed":I
    .end local v24    # "numFragments":I
    .end local v26    # "numMessagesFragment":Ljava/lang/String;
    .end local v27    # "numSendersUsed":I
    .restart local v23    # "numFragments":I
    :cond_2d
    move/from16 v24, v23

    .end local v23    # "numFragments":I
    .restart local v24    # "numFragments":I
    goto/16 :goto_1
.end method

.method public static getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZ)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderInstructions"    # Ljava/lang/String;
    .param p2, "senderBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "statusBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "maxChars"    # I
    .param p5, "forceAllUnread"    # Z
    .param p6, "forceAllRead"    # Z
    .param p7, "allowDraft"    # Z

    .prologue
    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 283
    .local v16, "res":Landroid/content/res/Resources;
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 285
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 286
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f0b0060

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    .line 288
    const v1, 0x7f100244

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sMeString:Ljava/lang/CharSequence;

    .line 289
    const v1, 0x7f0f000f

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    .line 290
    const v1, 0x7f0f000f

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    .line 291
    new-instance v17, Landroid/text/SpannableString;

    const v1, 0x7f100374

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .local v17, "sendingString":Landroid/text/SpannableString;
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 294
    sput-object v17, Lcom/kingsoft/mail/utils/Utils;->sSendingString:Ljava/lang/CharSequence;

    .line 295
    const v1, 0x7f100370

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    .line 298
    .end local v17    # "sendingString":Landroid/text/SpannableString;
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/utils/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v6, Lcom/kingsoft/mail/utils/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v7, Lcom/kingsoft/mail/utils/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v8, Lcom/kingsoft/mail/utils/Utils;->sMeString:Ljava/lang/CharSequence;

    sget-object v9, Lcom/kingsoft/mail/utils/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    sget-object v10, Lcom/kingsoft/mail/utils/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    sget-object v11, Lcom/kingsoft/mail/utils/Utils;->sSendingString:Ljava/lang/CharSequence;

    sget-object v12, Lcom/kingsoft/mail/utils/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-static/range {v1 .. v15}, Lcom/kingsoft/mail/utils/Utils;->getSenderSnippet(Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;ILandroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)V

    .line 302
    return-void
.end method

.method public static getSyncStatusText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packedStatus"    # I

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "errors":[Ljava/lang/String;
    and-int/lit8 v1, p1, 0xf

    .line 749
    .local v1, "status":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 750
    const-string/jumbo v2, ""

    .line 752
    :goto_0
    return-object v2

    :cond_0
    aget-object v2, v0, v1

    goto :goto_0
.end method

.method public static getSyncStatusText4AbastractControl(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packedStatus"    # I

    .prologue
    const v5, 0x7f10039e

    const/4 v4, 0x4

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "errors":[Ljava/lang/String;
    and-int/lit8 v1, p1, 0xf

    .line 762
    .local v1, "status":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 763
    const-string/jumbo v2, ""

    .line 778
    :goto_0
    return-object v2

    .line 765
    :cond_0
    if-ne v1, v4, :cond_1

    .line 767
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 769
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 772
    const-string/jumbo v2, ""

    goto :goto_0

    .line 774
    :cond_2
    if-ne v1, v4, :cond_3

    .line 776
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 778
    :cond_3
    aget-object v2, v0, v1

    goto :goto_0
.end method

.method public static getTransparentColor(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1177
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unreadCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 701
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 702
    .local v0, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 703
    const v2, 0x7f0e002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    .line 705
    :cond_0
    sget v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    if-le p1, v2, :cond_2

    .line 706
    sget-object v2, Lcom/kingsoft/mail/utils/Utils;->sUnreadText:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 707
    const v2, 0x7f1003d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/utils/Utils;->sUnreadText:Ljava/lang/String;

    .line 710
    :cond_1
    sget-object v2, Lcom/kingsoft/mail/utils/Utils;->sUnreadText:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    sget v4, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "unreadCountString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 711
    .end local v1    # "unreadCountString":Ljava/lang/String;
    :cond_2
    if-gtz p1, :cond_3

    .line 712
    const-string/jumbo v1, ""

    .restart local v1    # "unreadCountString":Ljava/lang/String;
    goto :goto_0

    .line 715
    .end local v1    # "unreadCountString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "unreadCountString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getUnreadMessageString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unreadCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 726
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 727
    const v2, 0x7f0e002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    .line 729
    :cond_0
    sget v2, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    if-le p1, v2, :cond_1

    .line 730
    new-instance v0, Landroid/text/SpannableString;

    const v2, 0x7f1000bc

    new-array v3, v4, [Ljava/lang/Object;

    sget v4, Lcom/kingsoft/mail/utils/Utils;->sMaxUnreadCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 737
    .local v0, "message":Landroid/text/SpannableString;
    :goto_0
    sget-object v2, Lcom/kingsoft/mail/utils/Utils;->ACTION_BAR_UNREAD_STYLE:Landroid/text/style/CharacterStyle;

    invoke-static {v2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 740
    return-object v0

    .line 733
    .end local v0    # "message":Landroid/text/SpannableString;
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    const/high16 v2, 0x7f0f0000

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0    # "message":Landroid/text/SpannableString;
    goto :goto_0
.end method

.method public static getValidUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 1196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 1197
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1198
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 927
    sget v1, Lcom/kingsoft/mail/utils/Utils;->sVersionCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 929
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/kingsoft/mail/utils/Utils;->sVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    :goto_0
    sget v1, Lcom/kingsoft/mail/utils/Utils;->sVersionCode:I

    return v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error finding package %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static isEmpty(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1202
    if-eqz p0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningKitkatOrLater()Z
    .locals 2

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mailSearchQueryForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1079
    const-string/jumbo v1, "query"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 9
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 669
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 670
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 671
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v0, v6, v7

    .line 676
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v0, "childSideMargin":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 677
    .local v4, "parentWSpec":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 680
    .local v5, "wSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 681
    .local v1, "hSpec":I
    invoke-virtual {p0, v5, v1}, Landroid/view/View;->measure(II)V

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    return v6

    .line 673
    .end local v0    # "childSideMargin":I
    .end local v1    # "hSpec":I
    .end local v4    # "parentWSpec":I
    .end local v5    # "wSpec":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childSideMargin":I
    goto :goto_0
.end method

.method public static normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 1517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    .end local p0    # "email":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "email":Ljava/lang/String;
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1121
    if-nez p0, :cond_1

    .line 1122
    const/4 p0, 0x0

    .line 1131
    .local v0, "semicolonIndex":I
    :cond_0
    :goto_0
    return-object p0

    .line 1125
    .end local v0    # "semicolonIndex":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1127
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1128
    .restart local v0    # "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1160
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, "scheme":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1165
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 1162
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "lowerScheme":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static notifyCursorUIPositionChange(Landroid/database/Cursor;I)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I

    .prologue
    .line 1252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1253
    .local v1, "request":Landroid/os/Bundle;
    const-string/jumbo v0, "uiPositionChange"

    .line 1255
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "uiPositionChange"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    const-string/jumbo v2, "uiPositionChange"

    invoke-static {p0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->executeConversationCursorCommand(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static openUrl(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "optionalExtras"    # Landroid/os/Bundle;

    .prologue
    .line 877
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid url in Utils.openUrl(): %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 890
    :goto_0
    return-void

    .line 881
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 883
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 884
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 886
    :cond_2
    const-string/jumbo v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static registNetWorkReceiverForImapPushService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1613
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    if-nez v0, :cond_0

    .line 1614
    new-instance v0, Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    .line 1615
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1617
    :cond_0
    return-void
.end method

.method private static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 915
    const-string/jumbo v2, "%locale%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 917
    .local v0, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "tmp":Ljava/lang/String;
    const-string/jumbo v2, "%locale%"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 920
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static restrictWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 200
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 204
    return-void
.end method

.method public static sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Landroid/net/Uri;Z)V
    .locals 3
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;
    .param p1, "feedbackIntentUri"    # Landroid/net/Uri;
    .param p2, "reportingProblem"    # Z

    .prologue
    .line 1034
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1036
    .local v0, "optionalExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "reporting_problem"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1038
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getReducedSizeBitmap(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1039
    .local v1, "screenBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1040
    const-string/jumbo v2, "screen_shot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1043
    :cond_0
    invoke-interface {p0}, Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/kingsoft/mail/utils/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1045
    .end local v0    # "optionalExtras":Landroid/os/Bundle;
    .end local v1    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public static sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Lcom/kingsoft/mail/providers/Account;Z)V
    .locals 1
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "reportingProblem"    # Z

    .prologue
    .line 1021
    if-eqz p0, :cond_0

    .line 1023
    invoke-interface {p0}, Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->reportFeedback(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    .line 1025
    :cond_0
    return-void
.end method

.method public static sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Z)V
    .locals 2
    .param p0, "activity"    # Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;
    .param p1, "reportingProblem"    # Z

    .prologue
    .line 1028
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getLastViewedAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1029
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Lcom/kingsoft/mail/providers/Account;Z)V

    .line 1030
    return-void
.end method

.method public static setConversationCursorVisibility(Landroid/database/Cursor;ZZ)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "visible"    # Z
    .param p2, "isFirstSeen"    # Z

    .prologue
    .line 1270
    new-instance v0, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;-><init>(Landroid/database/Cursor;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/Utils$MarkConversationCursorVisibleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1271
    return-void
.end method

.method public static setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1173
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static setIntentTypeAndNormalize(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1169
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "itemId"    # I
    .param p2, "shouldShow"    # Z

    .prologue
    .line 1181
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1182
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static shouldShowDisabledArchiveIcon(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static showAccountSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v4, 0x0

    .line 968
    const-string/jumbo v1, "222"

    const-string/jumbo v2, "showAccountSettings"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 969
    if-nez p1, :cond_0

    .line 970
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid attempt to show setting screen with null account"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 979
    :goto_0
    return-void

    .line 973
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 976
    .local v0, "settingsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 977
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showAttachmentMgr(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 957
    if-nez p1, :cond_0

    .line 958
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid attempt to show attachment management screen with null account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 962
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showFolderSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v4, 0x0

    .line 985
    const-string/jumbo v1, "222"

    const-string/jumbo v2, "showFolderSettings"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 986
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 987
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid attempt to show folder settings folder: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 997
    :goto_0
    return-void

    .line 990
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 993
    .local v0, "settingsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 994
    const-string/jumbo v1, "extra_folder"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 995
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showHelp(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "fromWhere"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 854
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "urlString":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 857
    sget-object v3, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to show help for account"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 868
    :goto_1
    return-void

    .end local v2    # "urlString":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 854
    goto :goto_0

    .line 860
    .restart local v2    # "urlString":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v2}, Lcom/kingsoft/mail/utils/Utils;->addParamsToUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 861
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 863
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 864
    const-string/jumbo v4, "p"

    invoke-virtual {v0, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 867
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/kingsoft/mail/utils/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static showManageFolder(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v4, 0x0

    .line 1003
    const-string/jumbo v1, "222"

    const-string/jumbo v2, "showManageFolder"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1004
    if-nez p1, :cond_0

    .line 1005
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid attempt to the manage folders screen with null account"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1014
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1010
    .local v0, "settingsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1011
    const-string/jumbo v1, "extra_manage_folders"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1012
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v4, 0x0

    .line 944
    const-string/jumbo v1, "222"

    const-string/jumbo v2, "showSettings"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 945
    if-nez p1, :cond_0

    .line 946
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid attempt to show setting screen with null account"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 952
    :goto_0
    return-void

    .line 949
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 951
    .local v0, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showTwoPaneSearchResults(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static traceBeginSection(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 1482
    return-void
.end method

.method public static traceEndSection()V
    .locals 0

    .prologue
    .line 1494
    return-void
.end method

.method public static unregistNetWorkReceiverForImapPushService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1620
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1623
    :try_start_0
    sget-object v1, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/kingsoft/mail/utils/Utils;->gNetworkStatusBroadcastReceiver:Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;

    .line 1631
    :cond_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static useFolderListFragmentTransition(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    sget v0, Lcom/kingsoft/mail/utils/Utils;->sUseFolderListFragmentTransition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/utils/Utils;->sUseFolderListFragmentTransition:I

    .line 614
    :cond_0
    sget v0, Lcom/kingsoft/mail/utils/Utils;->sUseFolderListFragmentTransition:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useTabletUI(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 593
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
