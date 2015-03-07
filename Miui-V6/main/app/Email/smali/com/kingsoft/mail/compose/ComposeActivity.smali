.class public Lcom/kingsoft/mail/compose/ComposeActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;
.implements Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;
.implements Lcom/kingsoft/mail/compose/ContactListActivity$CallbackInterface;
.implements Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;
.implements Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;
.implements Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;,
        Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;,
        Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;,
        Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;,
        Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;,
        Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;,
        Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;,
        Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;,
        Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/ui/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/ActionBar$OnNavigationListener;",
        "Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;",
        "Landroid/text/TextWatcher;",
        "Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;",
        "Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;",
        "Lcom/kingsoft/mail/compose/ContactListActivity$CallbackInterface;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;"
    }
.end annotation


# static fields
.field static final ALL_EXTRAS:[Ljava/lang/String;

.field private static final ATTACHMENT_LOADER:I = 0x4

.field public static final AUTO_SEND_ACTION:Ljava/lang/String; = "com.android.mail.action.AUTO_SEND"

.field public static final COMPOSE:I = -0x1

.field public static final EDIT_DRAFT:I = 0x3

.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final END_TOKEN:Ljava/lang/String; = ", "

.field protected static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final EXTRA_ATTACHMENTS:Ljava/lang/String; = "attachments"

.field public static final EXTRA_ATTACHMENTS_IDS:Ljava/lang/String; = "attachments_ids"

.field private static final EXTRA_ATTACHMENT_PREVIEWS:Ljava/lang/String; = "attachmentPreviews"

.field private static final EXTRA_BCC:Ljava/lang/String; = "bcc"

.field private static final EXTRA_BODY:Ljava/lang/String; = "body"

.field private static final EXTRA_CC:Ljava/lang/String; = "cc"

.field private static final EXTRA_FOCUS_SELECTION_END:Ljava/lang/String; = "focusSelectionEnd"

.field private static final EXTRA_FOCUS_SELECTION_START:Ljava/lang/String; = "focusSelectionStart"

.field protected static final EXTRA_FROM_ACCOUNT_STRING:Ljava/lang/String; = "fromAccountString"

.field public static final EXTRA_FROM_EMAIL_TASK:Ljava/lang/String; = "fromemail"

.field private static final EXTRA_IN_REFERENCE_TO_MESSAGE:Ljava/lang/String; = "in-reference-to-message"

.field private static final EXTRA_IN_REFERENCE_TO_MESSAGE_ID:Ljava/lang/String; = "in-reference-to-message-id"

.field protected static final EXTRA_IN_REFERENCE_TO_MESSAGE_URI:Ljava/lang/String; = "in-reference-to-message-uri"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "extraMessage"

.field public static final EXTRA_NOTIFICATION_FOLDER:Ljava/lang/String; = "extra-notification-folder"

.field private static final EXTRA_QUOTED_TEXT:Ljava/lang/String; = "quotedText"

.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final EXTRA_RESPONDED_INLINE:Ljava/lang/String; = "respondedInline"

.field private static final EXTRA_SAVE_ENABLED:Ljava/lang/String; = "saveEnabled"

.field private static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final EXTRA_SELECTED_REPLY_FROM_ACCOUNT:Ljava/lang/String; = "replyFromAccount"

.field private static final EXTRA_SHOW_BCC:Ljava/lang/String; = "showBcc"

.field private static final EXTRA_SHOW_CC:Ljava/lang/String; = "showCc"

.field private static final EXTRA_SUBJECT:Ljava/lang/String; = "subject"

.field protected static final EXTRA_TO:Ljava/lang/String; = "to"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_VALUES:Ljava/lang/String; = "extra-values"

.field public static final FEEDBACK:I = 0x4

.field public static final FEEDBACK_ADDRESS:Ljava/lang/String; = "wpsmail@kingsoft.com"

.field public static final FORWARD:I = 0x2

.field public static final HAS_ADD_NEW_RECIPIENT:Ljava/lang/String; = "has_add_new_recipient"

.field private static final INIT_DRAFT_USING_REFERENCE_MESSAGE:I = 0x2

.field private static final KEY_INNER_SAVED_STATE:Ljava/lang/String; = "compose_state"

.field private static final LOADER_ACCOUNT_CURSOR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAIL_TO:Ljava/lang/String; = "mailto"

.field private static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field private static final MIME_TYPE_PHOTO:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final MSG_SAVE_DRAFT:I = 0x1

.field private static final ORIGINAL_DRAFT_MESSAGE:Ljava/lang/String; = "original-draft-message"

.field private static final ORIGINAL_DRAFT_MESSAGE_ID:Ljava/lang/String; = "original-draft-message-id"

.field private static final ORIGINAL_DRAFT_MESSAGE_LOADER:I = 0x3

.field private static final ORIGINAL_DRAFT_MESSAGE_URI:Ljava/lang/String; = "original-draft-message-uri"

.field private static final REFERENCE_MESSAGE_LOADER:I = 0x0

.field public static final REPLY:I = 0x0

.field public static final REPLY_ALL:I = 0x1

.field public static final RESULT_CHOOSE_BCC_LIST:I = 0x5

.field public static final RESULT_CHOOSE_CC_LIST:I = 0x4

.field public static final RESULT_CHOOSE_TO_LIST:I = 0x3

.field private static final RESULT_CREATE_ACCOUNT:I = 0x2

.field private static final RESULT_PICK_ATTACHMENT:I = 0x1

.field private static final SAVE_DRAFT_INTERVAL:I = 0x1388

.field private static final TAG_WAIT:Ljava/lang/String; = "wait-fragment"

.field private static final UTF8_ENCODING_NAME:Ljava/lang/String; = "UTF-8"

.field private static final WITH_PRE_MESSAGE_ATTACHMENT_NO:I = -0x1

.field private static final WITH_PRE_MESSAGE_ATTACHMENT_YES:I = 0x1

.field public static allcheckedlist_bcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field

.field public static allcheckedlist_cc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field

.field public static allcheckedlist_to:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation
.end field

.field public static from_email:Ljava/lang/String;

.field private static sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;


# instance fields
.field protected contact_from_spinner_btn:Landroid/widget/ImageButton;

.field private from_account_select:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

.field private hebingflag:Z

.field private isShowAttachment:Z

.field protected mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccounts:[Lcom/kingsoft/mail/providers/Account;

.field protected mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

.field public mActiveTasks:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;",
            ">;"
        }
    .end annotation
.end field

.field private mAdd2BCCBtn:Landroid/widget/ImageButton;

.field private mAdd2CCBtn:Landroid/widget/ImageButton;

.field private mAdd2ToBtn:Landroid/widget/ImageButton;

.field private mAddingAttachment:Z

.field private mAttachmentDivider:Landroid/view/View;

.field private mAttachmentsChanged:Z

.field private mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

.field private mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

.field private mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

.field private mBccListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

.field private mBodyLineCount:I

.field protected mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

.field private mCachedSettings:Lcom/kingsoft/mail/providers/Settings;

.field private mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

.field private mCcBccButton:Landroid/widget/Button;

.field private mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

.field private mCcListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

.field protected mComposeMode:I

.field private mComposeModeAdapter:Lcom/kingsoft/mail/compose/ComposeActivity$ComposeModeAdapter;

.field private mDraft:Lcom/kingsoft/mail/providers/Message;

.field private mDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

.field private mDraftHasHandle:Z

.field private mDraftId:J

.field private mDraftLock:Ljava/lang/Object;

.field private mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

.field private mEditManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

.field private mExtraValues:Landroid/content/ContentValues;

.field private mForward:Z

.field protected mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFromStaticText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasPromptAddAttachment:Z

.field private mInitListBcc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitListCc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitListTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInnerSavedState:Landroid/os/Bundle;

.field private mLaunchedFromEmail:Z

.field private mMailPrefs:Landroid/content/SharedPreferences;

.field private mMailPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPendingShowSelf:Z

.field private mPerformedDiscard:Z

.field private mPerformedSendOrDiscard:Z

.field private mPhotoAttachmentsButton:Landroid/view/View;

.field private mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

.field private mReceipt:Z

.field protected mRefMessage:Lcom/kingsoft/mail/providers/Message;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRefMessageUri:Landroid/net/Uri;

.field private mRegisterListener:Z

.field protected mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

.field private mReplyFromChanged:Z

.field private mRequestId:I

.field private mRespondedInline:Z

.field private mResumeOrPause:Z

.field private mSave:Landroid/view/MenuItem;

.field private mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

.field private mSendSaveTaskHandler:Landroid/os/Handler;

.field private mShowQuotedText:Z

.field private mSignature:Ljava/lang/String;

.field private mSubject:Landroid/widget/TextView;

.field private mSubjectTextsize:F

.field private mTextChanged:Z

.field private mTextStyleChanged:Z

.field private mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

.field private mToListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

.field private mValidator:Lcom/kingsoft/common/Rfc822Validator;

.field private mVideoAttachmentsButton:Landroid/view/View;

.field private mWindowFocused:Z

.field pendingAddRecipients:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    .line 206
    const-string/jumbo v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 222
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "to"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "bcc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "quotedText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->ALL_EXTRAS:[Ljava/lang/String;

    .line 225
    sput-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    .line 245
    sput-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, ""

    sput-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListTo:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListCc:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->pendingAddRecipients:Z

    .line 309
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mHasPromptAddAttachment:Z

    .line 314
    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mHandler:Landroid/os/Handler;

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 340
    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mEditManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 342
    iput v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I

    .line 351
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 352
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    .line 358
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;

    .line 369
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mLaunchedFromEmail:Z

    .line 374
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 376
    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    .line 380
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    .line 387
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedSendOrDiscard:Z

    .line 388
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedDiscard:Z

    .line 389
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->isShowAttachment:Z

    .line 390
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mResumeOrPause:Z

    .line 391
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->hebingflag:Z

    .line 392
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 394
    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    .line 397
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRegisterListener:Z

    .line 398
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mWindowFocused:Z

    .line 399
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z

    .line 402
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReceipt:Z

    .line 2099
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$14;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$14;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 4778
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/compose/ComposeActivity;)[Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/CcBccView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressToList(Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/compose/ComposeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mWindowFocused:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/kingsoft/mail/compose/ComposeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishRecipientErrorDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kingsoft/mail/compose/ComposeActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSendConfirmDialog(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/kingsoft/mail/compose/ComposeActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSaveConfirmDialog(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->stopSaveDraftTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->showCcBccViews()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kingsoft/mail/compose/ComposeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    return-void
.end method

.method static synthetic access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/kingsoft/mail/compose/ComposeActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/mail/providers/ReplyFromAccount;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/kingsoft/mail/compose/ComposeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/kingsoft/mail/compose/ComposeActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/providers/Message;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/Message;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->saveRequestMap()V

    return-void
.end method

.method static synthetic access$2800(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateAttachmentsView()V

    return-void
.end method

.method static synthetic access$2900(Lcom/kingsoft/mail/compose/ComposeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedDiscard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/AttachmentsView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isAddPreMessageAttachment()V

    return-void
.end method

.method static synthetic access$3200(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/compose/ComposeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/kingsoft/mail/compose/ComposeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/ComposeScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->scrollToAttachmentView()V

    return-void
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/compose/ComposeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    return-object v0
.end method

.method private addAddressToList(Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "list"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kingsoft/ex/chips/RecipientEditTextView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2824
    .local p3, "initSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2843
    :cond_0
    :goto_0
    return-void

    .line 2828
    :cond_1
    iget-boolean v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->pendingAddRecipients:Z

    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 2829
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2833
    :cond_2
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 2835
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 2836
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2837
    .local v1, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-virtual {p2, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->submitItemAtPositionbyESB(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    .line 2835
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2839
    .end local v1    # "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2840
    :catch_0
    move-exception v0

    .line 2841
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addBccAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2760
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    .line 2761
    return-void
.end method

.method private addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2735
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 2736
    invoke-static {p2}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 2737
    .local v3, "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v2

    .line 2739
    .local v2, "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2740
    .local v6, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2741
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 2742
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 2744
    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2746
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2751
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v7    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    move-object v1, v6

    .line 2756
    .end local v2    # "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListCc:Ljava/util/List;

    invoke-virtual {p0, v1, v8, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    .line 2757
    return-void

    .line 2753
    .end local v1    # "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    move-object v1, p1

    .restart local v1    # "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private addMailPrefsListener()V
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2024
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    .line 2025
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRegisterListener:Z

    .line 2027
    return-void
.end method

.method private addPreMessageAttachment(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    const-string/jumbo v1, "has_add_new_recipient"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1201
    .local v0, "addNewRecips":Z
    if-eqz v0, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isAddPreMessageAttachment()V

    .line 1205
    .end local v0    # "addNewRecips":Z
    :cond_0
    return-void
.end method

.method private addToAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2728
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListTo:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    .line 2729
    return-void
.end method

.method private appendSignature()V
    .locals 7

    .prologue
    .line 4346
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4371
    :cond_0
    :goto_0
    return-void

    .line 4349
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCachedSettings:Lcom/kingsoft/mail/providers/Settings;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCachedSettings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v5, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    .line 4352
    .local v3, "newSignature":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4353
    .local v0, "accountId":J
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    const v6, 0x7f100169

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/provider/Account;->getSignature(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4356
    .end local v0    # "accountId":J
    :goto_2
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/MailEditor;->hasFocus()Z

    move-result v2

    .line 4357
    .local v2, "hasFocus":Z
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v6}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4359
    .local v4, "signaturePos":I
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-gez v4, :cond_0

    .line 4360
    :cond_2
    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    .line 4361
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4363
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v5, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4364
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/MailEditor;->innerGetEditText()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 4365
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v5, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4367
    :cond_3
    if-eqz v2, :cond_0

    .line 4368
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->focusBody()V

    goto :goto_0

    .line 4349
    .end local v2    # "hasFocus":Z
    .end local v3    # "newSignature":Ljava/lang/String;
    .end local v4    # "signaturePos":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 4354
    .restart local v3    # "newSignature":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static buildFormattedSubject(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/4 v4, 0x2

    .line 2852
    if-nez p1, :cond_0

    .line 2853
    const-string/jumbo p1, ""

    .line 2855
    :cond_0
    const/4 v0, 0x0

    .line 2856
    .local v0, "correctedSubject":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 2857
    const-string/jumbo v1, ""

    .line 2865
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2867
    move-object v0, p1

    .line 2873
    :goto_1
    return-object v0

    .line 2858
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    if-ne p2, v4, :cond_2

    .line 2859
    const v2, 0x7f1001df

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 2861
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const v2, 0x7f100345

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 2869
    :cond_3
    const v2, 0x7f1001d8

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private checkValidAccounts()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 827
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 828
    .local v1, "allAccounts":[Lcom/kingsoft/mail/providers/Account;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_2

    .line 829
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 831
    .local v6, "noAccountIntent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 832
    iput-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 833
    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 855
    .end local v6    # "noAccountIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    const/4 v2, 0x0

    .line 838
    .local v2, "anySyncing":Z
    move-object v3, v1

    .local v3, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 839
    .local v0, "a":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->isAccountReady()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 840
    const/4 v2, 0x1

    .line 844
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    :cond_3
    if-nez v2, :cond_5

    .line 847
    iput-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 848
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v9, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 838
    .restart local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 852
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    :cond_5
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 853
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishCreate()V

    goto :goto_0
.end method

.method private checkedBccListContainSelf()Z
    .locals 4

    .prologue
    .line 2089
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 2090
    .local v0, "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2092
    const/4 v2, 0x1

    .line 2095
    .end local v0    # "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearChangeListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1817
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1818
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1819
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mToListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1820
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1821
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBccListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1822
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setOnAccountChangedListener(Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;)V

    .line 1823
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V

    .line 1824
    return-void
.end method

.method public static compose(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v5, 0x0

    .line 424
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 427
    return-void
.end method

.method public static composeForAttSharing(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "attIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 461
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 463
    return-void
.end method

.method public static composeToAddress(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "toAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 434
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 437
    return-void
.end method

.method public static composeWithExtraValues(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 454
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, p2

    move-object v9, p3

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 456
    return-void
.end method

.method public static composeWithQuotedText(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "quotedText"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 444
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 447
    return-void
.end method

.method public static convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2791
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2792
    .local v0, "hash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/util/Rfc822Token;

    .line 2793
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2794
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2797
    .end local v1    # "i":I
    .end local v3    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v0
.end method

.method private convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 4374
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100383

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4375
    .local v0, "signatureResource":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 4376
    const-string/jumbo p1, ""

    .line 4378
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copySystemContact()V
    .locals 1

    .prologue
    .line 1556
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$3;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$3;->start()V

    .line 1565
    return-void
.end method

.method private static createActionIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "action"    # I

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1, p2, p3, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateActionIntent(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;ILandroid/content/Intent;)Landroid/content/Intent;

    .line 505
    return-object v0
.end method

.method public static createEditDraftIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)Landroid/content/Intent;
    .locals 4
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "id"    # J

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "fromemail"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    const-string/jumbo v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const-string/jumbo v2, "account"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    const-string/jumbo v2, "uimessage"

    invoke-static {v2, p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 477
    .local v1, "msgUri":Landroid/net/Uri;
    const-string/jumbo v2, "original-draft-message-uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    return-object v0
.end method

.method public static createForwardIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 496
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->createActionIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createMessage(Lcom/kingsoft/mail/providers/ReplyFromAccount;IZ)Lcom/kingsoft/mail/providers/Message;
    .locals 13
    .param p1, "selectedReplyFromAccount"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .param p2, "mode"    # I
    .param p3, "save"    # Z

    .prologue
    .line 1346
    new-instance v6, Lcom/kingsoft/mail/providers/Message;

    invoke-direct {v6}, Lcom/kingsoft/mail/providers/Message;-><init>()V

    .line 1347
    .local v6, "message":Lcom/kingsoft/mail/providers/Message;
    const-wide/16 v9, -0x1

    iput-wide v9, v6, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 1348
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    .line 1349
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 1350
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    .line 1351
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    .line 1352
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    .line 1353
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->formatSenders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/kingsoft/mail/providers/Message;->setTo(Ljava/lang/String;)V

    .line 1357
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->formatSenders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "bccStr":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/providers/Message;->setBcc(Ljava/lang/String;)V

    .line 1377
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->formatSenders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/kingsoft/mail/providers/Message;->setCc(Ljava/lang/String;)V

    .line 1379
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/kingsoft/mail/providers/Message;->setReplyTo(Ljava/lang/String;)V

    .line 1380
    const-wide/16 v9, 0x0

    iput-wide v9, v6, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    .line 1381
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/MailEditor;->getHtml()Ljava/lang/String;

    move-result-object v5

    .line 1383
    .local v5, "htmlBody":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v4, "fullBody":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 1385
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    .line 1386
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/kingsoft/mail/providers/Message;->embedsExternalResources:Z

    .line 1387
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v9, v9, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    :goto_0
    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    .line 1388
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextIfIncluded()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v6, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    .line 1390
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    .line 1391
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v6, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 1392
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    .line 1393
    const-wide/16 v9, 0x0

    iput-wide v9, v6, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    .line 1394
    iget-boolean v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReceipt:Z

    if-eqz v9, :cond_0

    .line 1395
    iget-wide v9, v6, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    const-wide/32 v11, 0x800000

    or-long/2addr v9, v11

    iput-wide v9, v6, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    .line 1396
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    .line 1397
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Attachment;->toJSONArray(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    .line 1398
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1399
    .local v7, "quotedText":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextOffset(Ljava/lang/String;)I

    move-result v9

    :goto_3
    iput v9, v6, Lcom/kingsoft/mail/providers/Message;->quotedTextOffset:I

    .line 1401
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    .line 1402
    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    .line 1406
    .local v3, "email":Ljava/lang/String;
    :goto_4
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v8

    .line 1408
    .local v8, "senderName":Ljava/lang/String;
    :goto_5
    new-instance v0, Lcom/kingsoft/mail/providers/Address;

    invoke-direct {v0, v8, v3}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    .local v0, "address":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->pack()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/kingsoft/mail/providers/Message;->setFrom(Ljava/lang/String;)V

    .line 1410
    invoke-static {p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDraftType(I)I

    move-result v9

    iput v9, v6, Lcom/kingsoft/mail/providers/Message;->draftType:I

    .line 1411
    return-object v6

    .line 1387
    .end local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    .end local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    .end local v3    # "email":Ljava/lang/String;
    .end local v7    # "quotedText":Ljava/lang/CharSequence;
    .end local v8    # "senderName":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1388
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1391
    .restart local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1399
    .restart local v7    # "quotedText":Ljava/lang/CharSequence;
    :cond_4
    const/4 v9, -0x1

    goto :goto_3

    .line 1402
    :cond_5
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1406
    .restart local v3    # "email":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public static createReplyIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "isReplyAll"    # Z

    .prologue
    .line 487
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->createActionIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private discardChanges()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3555
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 3556
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    .line 3557
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    .line 3558
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    .line 3559
    return-void
.end method

.method private doAttach(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 4151
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4155
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4156
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4158
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAddingAttachment:Z

    .line 4159
    const v1, 0x7f10036c

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4162
    return-void
.end method

.method private doDiscard()V
    .locals 3

    .prologue
    .line 4507
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;-><init>()V

    .line 4508
    .local v0, "frag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "discard confirm"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4509
    return-void
.end method

.method private doDiscardWithoutConfirmation(Z)V
    .locals 9
    .param p1, "showToast"    # Z

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 4518
    iput-boolean v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 4519
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4520
    :try_start_0
    iget-wide v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_0

    .line 4521
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4522
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    iget-wide v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4523
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4524
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4533
    :goto_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    .line 4535
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4538
    if-eqz p1, :cond_1

    .line 4539
    const v1, 0x7f10026f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4544
    :cond_1
    iput-boolean v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedSendOrDiscard:Z

    .line 4545
    iput-boolean v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedDiscard:Z

    .line 4546
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 4547
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    .line 4548
    return-void

    .line 4527
    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 4535
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doSave(Z)V
    .locals 2
    .param p1, "showToast"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3118
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSaveWithSanityChecks(ZZZZ)Z

    .line 3119
    return-void
.end method

.method private doSend()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3073
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackBlank()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3075
    const v3, 0x7f1000fe

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3076
    .local v1, "erro":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showErrorToast(Ljava/lang/String;)V

    .line 3105
    .end local v1    # "erro":Ljava/lang/String;
    :goto_0
    return-void

    .line 3080
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->stopSaveDraftTimer()V

    .line 3081
    iput-boolean v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedSendOrDiscard:Z

    .line 3082
    invoke-virtual {p0, v4, v5, v4, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSaveWithSanityChecks(ZZZZ)Z

    .line 3083
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->logSendOrSave(Z)V

    .line 3085
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAction()I

    move-result v0

    .line 3086
    .local v0, "action":I
    const-string/jumbo v2, "A25"

    .line 3087
    .local v2, "subEVent":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 3104
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "B03"

    invoke-static {v3, v4, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3089
    :pswitch_0
    const-string/jumbo v2, "A25"

    .line 3090
    goto :goto_1

    .line 3093
    :pswitch_1
    const-string/jumbo v2, "A27"

    .line 3094
    goto :goto_1

    .line 3097
    :pswitch_2
    const-string/jumbo v2, "A28"

    .line 3098
    goto :goto_1

    .line 3101
    :pswitch_3
    const-string/jumbo v2, "A29"

    goto :goto_1

    .line 3087
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static editDraft(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgid"    # J

    .prologue
    const/4 v5, 0x0

    .line 409
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 412
    return-void
.end method

.method private findViews()V
    .locals 8

    .prologue
    const v7, 0x7f0c011f

    const/4 v6, 0x0

    const/4 v5, -0x1

    const v4, 0x7f02005a

    .line 1682
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    const v2, 0x7f0c0263

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    .line 1687
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 1688
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1691
    :cond_0
    const v2, 0x7f0c0124

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1692
    .local v1, "btnDoAttach":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1693
    .local v0, "action":I
    if-eq v0, v5, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 1699
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1700
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    :cond_2
    const v2, 0x7f0c0130

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/compose/CcBccView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    .line 1705
    const v2, 0x7f0c0121

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/compose/AttachmentsView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    .line 1707
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPhotoAttachmentsButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1708
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPhotoAttachmentsButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mVideoAttachmentsButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1712
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mVideoAttachmentsButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1714
    :cond_4
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/compose/ComposeScrollView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    .line 1715
    const v2, 0x7f0c015b

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .line 1716
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1717
    const v2, 0x7f0c00f5

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .line 1718
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1719
    const v2, 0x7f0c00fa

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .line 1720
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1721
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    new-instance v3, Lcom/kingsoft/mail/compose/ComposeActivity$4;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$4;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1734
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    new-instance v3, Lcom/kingsoft/mail/compose/ComposeActivity$5;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$5;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1744
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1746
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1748
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1753
    const v2, 0x7f0c015a

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2ToBtn:Landroid/widget/ImageButton;

    .line 1754
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2ToBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1756
    const v2, 0x7f0c00f4

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2CCBtn:Landroid/widget/ImageButton;

    .line 1757
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2CCBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1759
    const v2, 0x7f0c00f9

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2BCCBtn:Landroid/widget/ImageButton;

    .line 1760
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAdd2BCCBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1764
    const v2, 0x7f0c0157

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    .line 1765
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1766
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubjectTextsize:F

    .line 1767
    const v2, 0x7f0c0122

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/compose/QuotedTextView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    .line 1768
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v2, p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setRespondInlineListener(Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;)V

    .line 1769
    const v2, 0x7f0c012f

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/MailEditor;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    .line 1770
    new-instance v2, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-direct {v2, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;-><init>(Lcom/kingsoft/email/widget/text/MailEditor;)V

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mEditManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    .line 1771
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mEditManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    const v3, 0x7f0c0123

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->init(Landroid/view/View;)V

    .line 1772
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->setOnTextStyleChangedListener(Lcom/kingsoft/email/widget/text/MailEditor$OnTextStyleChangedListener;)V

    .line 1774
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1775
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    new-instance v3, Lcom/kingsoft/mail/compose/ComposeActivity$6;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$6;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/MailEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1792
    const v2, 0x7f0c012b

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentDivider:Landroid/view/View;

    .line 1795
    return-void
.end method

.method private finishCreate()V
    .locals 24

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    move-object/from16 v21, v0

    .line 637
    .local v21, "savedState":Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViews()V

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initActionBar2()V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 640
    .local v15, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 642
    .local v16, "message":Lcom/kingsoft/mail/providers/Message;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 644
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->setShowAttachment(Z)V

    .line 645
    const/16 v20, 0x0

    .line 648
    .local v20, "quotedText":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 649
    .local v8, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-static/range {v21 .. v21}, Lcom/kingsoft/mail/compose/ComposeActivity;->hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    const-string/jumbo v2, "action"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 651
    .local v10, "action":I
    const-string/jumbo v2, "account"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "account":Lcom/kingsoft/mail/providers/Account;
    check-cast v8, Lcom/kingsoft/mail/providers/Account;

    .line 652
    .restart local v8    # "account":Lcom/kingsoft/mail/providers/Account;
    const-string/jumbo v2, "extraMessage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .end local v16    # "message":Lcom/kingsoft/mail/providers/Message;
    check-cast v16, Lcom/kingsoft/mail/providers/Message;

    .line 654
    .restart local v16    # "message":Lcom/kingsoft/mail/providers/Message;
    const-string/jumbo v2, "attachmentPreviews"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 656
    .local v19, "previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;>;"
    const-string/jumbo v2, "in-reference-to-message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    .line 658
    const-string/jumbo v2, "quotedText"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 660
    const-string/jumbo v2, "extra-values"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    .line 675
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentPreviews(Ljava/util/ArrayList;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V

    .line 678
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v2, :cond_2

    .line 824
    :goto_1
    return-void

    .line 662
    .end local v10    # "action":I
    .end local v19    # "previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;>;"
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/kingsoft/mail/compose/ComposeActivity;->obtainAccount(Landroid/content/Intent;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v8

    .line 663
    const-string/jumbo v2, "action"

    const/4 v3, -0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 665
    .restart local v10    # "action":I
    const-string/jumbo v2, "attachmentPreviews"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 666
    .restart local v19    # "previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;>;"
    const-string/jumbo v2, "in-reference-to-message-uri"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    .line 667
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    const-string/jumbo v2, "notification"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const-string/jumbo v3, "notification_action"

    const-string/jumbo v4, "compose"

    invoke-static {v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->getActionString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 683
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initRecipients()V

    .line 687
    const-string/jumbo v2, "extra-notification-folder"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/mail/providers/Folder;

    .line 689
    .local v17, "notificationFolder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v17, :cond_3

    .line 690
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v12, "clearNotifIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/kingsoft/mail/utils/Utils;->appendVersionQueryParameter(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 695
    const-string/jumbo v2, "account"

    invoke-virtual {v12, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    const-string/jumbo v2, "folder"

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 700
    .end local v12    # "clearNotifIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "fromemail"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 701
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mLaunchedFromEmail:Z

    .line 713
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 714
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 715
    move-object/from16 v0, p0

    iput v10, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 702
    :cond_5
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 703
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 704
    .local v14, "dataUri":Landroid/net/Uri;
    if-eqz v14, :cond_4

    .line 705
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 706
    .local v13, "dataScheme":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "accountScheme":Ljava/lang/String;
    invoke-static {v13, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mLaunchedFromEmail:Z

    goto :goto_2

    .line 719
    .end local v9    # "accountScheme":Ljava/lang/String;
    .end local v13    # "dataScheme":Ljava/lang/String;
    .end local v14    # "dataUri":Landroid/net/Uri;
    :cond_6
    if-eqz v16, :cond_9

    const/4 v2, 0x3

    if-eq v10, v2, :cond_9

    const/4 v2, 0x4

    if-eq v10, v2, :cond_9

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromDraftMessage(Lcom/kingsoft/mail/providers/Message;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->initQuotedTextFromRefMessage(Lcom/kingsoft/mail/providers/Message;I)V

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showCcBcc(Landroid/os/Bundle;)V

    .line 723
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 726
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-nez v2, :cond_7

    .line 727
    if-eqz v20, :cond_8

    .line 728
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->initQuotedText(Ljava/lang/CharSequence;Z)V

    .line 822
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iput v10, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 823
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v15, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSetup(ILandroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 729
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_7

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->initExtraValues(Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 734
    :cond_9
    const/4 v2, 0x3

    if-ne v10, v2, :cond_e

    .line 739
    if-nez v16, :cond_a

    .line 740
    const-string/jumbo v2, "original-draft-message-uri"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 742
    .local v18, "originMessageUri":Landroid/net/Uri;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "original-draft-message-uri"

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v11, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 748
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v18    # "originMessageUri":Landroid/net/Uri;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromDraftMessage(Lcom/kingsoft/mail/providers/Message;)V

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 751
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/providers/Message;->getBcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v22, 0x1

    .line 752
    .local v22, "showBcc":Z
    :goto_4
    if-nez v22, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    const/16 v23, 0x1

    .line 753
    .local v23, "showCc":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 755
    move-object/from16 v0, v16

    iget v2, v0, Lcom/kingsoft/mail/providers/Message;->draftType:I

    packed-switch v2, :pswitch_data_0

    .line 767
    const/4 v10, -0x1

    .line 770
    :goto_6
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Previous draft had action type: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 772
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 773
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 780
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    .line 781
    move-object/from16 v0, p0

    iput v10, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 751
    .end local v22    # "showBcc":Z
    .end local v23    # "showCc":Z
    :cond_c
    const/16 v22, 0x0

    goto :goto_4

    .line 752
    .restart local v22    # "showBcc":Z
    :cond_d
    const/16 v23, 0x0

    goto :goto_5

    .line 757
    .restart local v23    # "showCc":Z
    :pswitch_0
    const/4 v10, 0x0

    .line 758
    goto :goto_6

    .line 760
    :pswitch_1
    const/4 v10, 0x1

    .line 761
    goto :goto_6

    .line 763
    :pswitch_2
    const/4 v10, 0x2

    .line 764
    goto :goto_6

    .line 786
    .end local v22    # "showBcc":Z
    .end local v23    # "showCc":Z
    :cond_e
    if-eqz v10, :cond_f

    const/4 v2, 0x1

    if-eq v10, v2, :cond_f

    const/4 v2, 0x2

    if-ne v10, v2, :cond_11

    .line 787
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v2, :cond_7

    .line 788
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromRefMessage(I)V

    .line 789
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v2, :cond_10

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x4

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 796
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addMailPrefsListener()V

    .line 798
    const/4 v2, 0x2

    if-ne v10, v2, :cond_7

    .line 799
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    goto/16 :goto_3

    .line 803
    :cond_11
    const/4 v2, 0x4

    if-ne v10, v2, :cond_12

    .line 804
    const v2, 0x7f0c0158

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 805
    const v2, 0x7f0c015c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/compose/CcBccView;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v3, "wpsmail@kingsoft.com"

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const v3, 0x7f1001ac

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/MailEditor;->setHint(I)V

    goto/16 :goto_3

    .line 811
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addMailPrefsListener()V

    .line 813
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromExtras(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_1

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private finishRecipientErrorDialog()V
    .locals 0

    .prologue
    .line 3437
    return-void
.end method

.method private finishSaveConfirmDialog(ZZ)V
    .locals 0
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 3784
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    .line 3785
    return-void
.end method

.method private finishSendConfirmDialog(ZZ)V
    .locals 0
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 3723
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    .line 3724
    return-void
.end method

.method private static formatSenders(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1419
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static forward(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 543
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 546
    return-void
.end method

.method private static generateComposeIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 8
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J
    .param p4, "action"    # I
    .param p5, "toAddress"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;
    .param p7, "quotedText"    # Ljava/lang/String;
    .param p8, "subject"    # Ljava/lang/String;
    .param p9, "extraValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 573
    .local p10, "attIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "fromemail"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string/jumbo v3, "account"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 577
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    .line 578
    const-string/jumbo v3, "uimessage"

    invoke-static {v3, p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 579
    .local v2, "msgUri":Landroid/net/Uri;
    const/4 v3, 0x3

    if-ne p4, v3, :cond_7

    .line 580
    const-string/jumbo v3, "original-draft-message-uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    .end local v2    # "msgUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 586
    const-string/jumbo v3, "to"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :cond_1
    if-eqz p6, :cond_2

    .line 589
    const-string/jumbo v3, "body"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    :cond_2
    if-eqz p7, :cond_3

    .line 592
    const-string/jumbo v3, "quotedText"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    :cond_3
    if-eqz p8, :cond_4

    .line 595
    const-string/jumbo v3, "subject"

    move-object/from16 v0, p8

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_4
    if-eqz p9, :cond_5

    .line 598
    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Launching with extraValues: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 600
    const-string/jumbo v3, "extra-values"

    move-object/from16 v0, p9

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 603
    :cond_5
    if-eqz p10, :cond_6

    .line 608
    const-string/jumbo v3, "attachments_ids"

    move-object/from16 v0, p10

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 611
    :cond_6
    return-object v1

    .line 582
    .restart local v2    # "msgUri":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v3, "in-reference-to-message-uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getAction()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 3017
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    .line 3018
    .local v2, "savedState":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3020
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3021
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3026
    .local v0, "event":I
    :goto_0
    return v0

    .line 3023
    .end local v0    # "event":I
    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "event":I
    goto :goto_0
.end method

.method private static getActionString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 4173
    packed-switch p0, :pswitch_data_0

    .line 4187
    const-string/jumbo v0, "unknown"

    .line 4190
    .local v0, "msgType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4175
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "new_message"

    .line 4176
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 4178
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "reply"

    .line 4179
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 4181
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "reply_all"

    .line 4182
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 4184
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "forward"

    .line 4185
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 4173
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getComposeIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)Landroid/content/Intent;
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 416
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->generateComposeIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getContact()V
    .locals 0

    .prologue
    .line 2910
    return-void
.end method

.method private static getDefaultReplyFromAccount(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 10
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1651
    .local v8, "from":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-boolean v0, v8, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isDefault:Z

    if-eqz v0, :cond_0

    .line 1655
    .end local v8    # "from":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :goto_0
    return-object v8

    :cond_1
    new-instance v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/providers/ReplyFromAccount;-><init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v8, v0

    goto :goto_0
.end method

.method private static getDraftType(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 3918
    const/4 v0, -0x1

    .line 3919
    .local v0, "draftType":I
    packed-switch p0, :pswitch_data_0

    .line 3936
    :goto_0
    :pswitch_0
    return v0

    .line 3921
    :pswitch_1
    const/4 v0, 0x1

    .line 3922
    goto :goto_0

    .line 3924
    :pswitch_2
    const/4 v0, 0x2

    .line 3925
    goto :goto_0

    .line 3927
    :pswitch_3
    const/4 v0, 0x3

    .line 3928
    goto :goto_0

    .line 3930
    :pswitch_4
    const/4 v0, 0x4

    .line 3931
    goto :goto_0

    .line 3933
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 3919
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getFeedbackVersionInfo()Ljava/lang/StringBuffer;
    .locals 6

    .prologue
    .line 1423
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1424
    .local v2, "info":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    .line 1425
    .local v0, "appDeviceInfo":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    const-string/jumbo v4, "\n\n-----------------------------------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1426
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "deviceName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "deviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1428
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "sysVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemApi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1429
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "versionCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1430
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "appVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1431
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 1432
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1434
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, "protocol":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "accountProtocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1438
    .restart local v1    # "id":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "accountProtocol: obtain failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1441
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "accountProtocol: obtain failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getMode()I
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    return v0
.end method

.method private getReplyFromAccountForReply(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 5
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "refMessage"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 1569
    iget-object v3, p2, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 1571
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v3}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getReplyFromAccounts()Ljava/util/List;

    move-result-object v2

    .line 1573
    .local v2, "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1574
    .local v0, "from":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v3, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, p2, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1580
    .end local v0    # "from":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    :goto_0
    return-object v0

    .line 1578
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1580
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getReplyFromAccount(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v0

    goto :goto_0
.end method

.method private getReplyFromAccountFromDraft(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 12
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 1662
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v11

    .line 1663
    .local v11, "sender":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1664
    .local v0, "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getReplyFromAccounts()Ljava/util/List;

    move-result-object v10

    .line 1666
    .local v10, "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1667
    new-instance v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .end local v0    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/providers/ReplyFromAccount;-><init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1678
    .restart local v0    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :cond_0
    :goto_0
    return-object v0

    .line 1671
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1672
    .local v8, "fromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v1, v8, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1673
    move-object v0, v8

    .line 1674
    goto :goto_0
.end method

.method private getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;
    .locals 2

    .prologue
    .line 4996
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/WaitFragment;

    return-object v0
.end method

.method private static hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 977
    if-eqz p0, :cond_0

    const-string/jumbo v0, "extraMessage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideInputMethod()V
    .locals 4

    .prologue
    .line 2967
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2968
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2969
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2970
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2972
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initActionBar2()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1854
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 1855
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1859
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 1860
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1862
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040048

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1864
    .local v4, "ll":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1868
    const v5, 0x7f0c0125

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1870
    .local v2, "home_btn":Landroid/widget/Button;
    const v5, 0x7f0c0126

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1873
    .local v1, "compose_send_btn":Landroid/widget/Button;
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-nez v5, :cond_1

    .line 1874
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1875
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1877
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1878
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1879
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1880
    const v5, 0x7f0c0155

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromStaticText:Landroid/widget/TextView;

    .line 1881
    const v5, 0x7f0c0154

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    .line 1882
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    new-instance v6, Lcom/kingsoft/mail/compose/ComposeActivity$7;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$7;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    new-instance v5, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-direct {v5, p0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    .line 1891
    iget-object v6, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    .line 1892
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    new-instance v6, Lcom/kingsoft/mail/compose/ComposeActivity$8;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$8;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    .line 1908
    const v5, 0x7f0c0153

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/compose/FromAddressSpinner;

    iput-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    .line 1909
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setVisibility(I)V

    .line 1910
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    new-instance v6, Lcom/kingsoft/mail/compose/ComposeActivity$9;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$9;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1915
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    new-instance v6, Lcom/kingsoft/mail/compose/ComposeActivity$10;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$10;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setOnSpinnerShowListener(Lcom/kingsoft/mail/compose/FromAddressSpinner$OnSpinnerShowListener;)V

    goto/16 :goto_0
.end method

.method private initAttachmentsFromIntent(Landroid/content/Intent;)V
    .locals 32
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2437
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 2438
    .local v21, "extras":Landroid/os/Bundle;
    if-nez v21, :cond_0

    .line 2439
    sget-object v21, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2441
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 2442
    .local v15, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-nez v2, :cond_4

    .line 2443
    const-wide/16 v12, 0x0

    .line 2444
    .local v12, "totalSize":J
    const-string/jumbo v2, "attachments"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2445
    const-string/jumbo v2, "attachments"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 2447
    .local v30, "uris":[Ljava/lang/String;
    move-object/from16 v16, v30

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v29, v16, v23

    .line 2448
    .local v29, "uriString":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 2449
    .local v28, "uri":Landroid/net/Uri;
    const-wide/16 v6, 0x0

    .line 2451
    .local v6, "size":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v14

    .line 2453
    .local v14, "a":Lcom/kingsoft/mail/providers/Attachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v3, v14}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    .line 2455
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const-string/jumbo v3, "send_intent_attachment"

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2464
    .end local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    :goto_1
    add-long/2addr v12, v6

    .line 2447
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 2460
    :catch_0
    move-exception v20

    .line 2461
    .local v20, "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error adding attachment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2462
    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    goto :goto_1

    .line 2468
    .end local v6    # "size":J
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    .end local v23    # "i$":I
    .end local v24    # "len$":I
    .end local v28    # "uri":Landroid/net/Uri;
    .end local v29    # "uriString":Ljava/lang/String;
    .end local v30    # "uris":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "attachments_ids"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2470
    const-string/jumbo v2, "attachments_ids"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 2472
    .local v18, "attIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .line 2473
    .local v22, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 2474
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2473
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 2477
    :cond_2
    const-wide/16 v6, 0x0

    .line 2479
    .restart local v6    # "size":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v17

    .line 2482
    .local v17, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v14, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v14}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 2483
    .restart local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 2484
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lcom/kingsoft/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 2485
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v2

    iput v2, v14, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 2486
    const-string/jumbo v2, "uiattachment"

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v2, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v14, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 2487
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    iput v2, v14, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 2488
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v2, v14, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 2489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v3, v14}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    .line 2491
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const-string/jumbo v3, "send_intent_attachment"

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2501
    add-long/2addr v12, v6

    goto :goto_3

    .line 2496
    .end local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    .end local v17    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_1
    move-exception v20

    .line 2497
    .restart local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error adding attachment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2498
    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    move-wide/from16 v26, v12

    .line 2505
    .end local v6    # "size":J
    .end local v12    # "totalSize":J
    .end local v18    # "attIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    .end local v22    # "i":I
    .local v26, "totalSize":J
    :goto_4
    const-string/jumbo v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2506
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2507
    const-string/jumbo v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 2509
    .local v31, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v19, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Parcelable;

    .line 2512
    .local v28, "uri":Landroid/os/Parcelable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    check-cast v28, Landroid/net/Uri;

    .end local v28    # "uri":Landroid/os/Parcelable;
    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v14

    .line 2514
    .restart local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v8

    const-string/jumbo v9, "send_intent_attachment"

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget v2, v14, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v12, v2

    invoke-interface/range {v8 .. v13}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 2523
    .end local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    :catch_2
    move-exception v20

    .line 2524
    .restart local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error adding attachment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Settings;->getMaxAttachmentSize()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 2530
    .local v25, "maxSize":Ljava/lang/String;
    const v2, 0x7f1001ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v25, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showErrorToast(Ljava/lang/String;)V

    goto :goto_5

    .line 2535
    .end local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    .end local v25    # "maxSize":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachments(Ljava/util/List;)J

    move-result-wide v2

    add-long v12, v26, v2

    .line 2558
    .end local v19    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v26    # "totalSize":J
    .end local v31    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v12    # "totalSize":J
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_4

    .line 2559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V

    .line 2562
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v8

    const-string/jumbo v9, "send_intent_with_attachments"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2568
    .end local v12    # "totalSize":J
    :cond_4
    return-void

    .line 2537
    .restart local v26    # "totalSize":J
    :cond_5
    const-string/jumbo v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 2539
    .local v28, "uri":Landroid/net/Uri;
    const-wide/16 v6, 0x0

    .line 2541
    .restart local v6    # "size":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v14

    .line 2543
    .restart local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v3, v14}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v6

    .line 2545
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const-string/jumbo v3, "send_intent_attachment"

    invoke-virtual {v14}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2554
    .end local v14    # "a":Lcom/kingsoft/mail/providers/Attachment;
    :goto_7
    add-long v12, v26, v6

    .end local v26    # "totalSize":J
    .restart local v12    # "totalSize":J
    goto :goto_6

    .line 2550
    .end local v12    # "totalSize":J
    .restart local v26    # "totalSize":J
    :catch_3
    move-exception v20

    .line 2551
    .restart local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error adding attachment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2552
    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    goto :goto_7

    .end local v6    # "size":J
    .end local v20    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_6
    move-wide/from16 v12, v26

    .end local v26    # "totalSize":J
    .restart local v12    # "totalSize":J
    goto :goto_6

    :cond_7
    move-wide/from16 v26, v12

    .end local v12    # "totalSize":J
    .restart local v26    # "totalSize":J
    goto/16 :goto_4
.end method

.method private initChangeListeners()V
    .locals 2

    .prologue
    .line 1831
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1832
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1833
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1834
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mToListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    if-nez v0, :cond_0

    .line 1835
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mToListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mToListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1838
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    if-nez v0, :cond_1

    .line 1839
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    .line 1841
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1842
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBccListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    if-nez v0, :cond_2

    .line 1843
    new-instance v0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {v0, p0, v1, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBccListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBccListener:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientTextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1846
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setOnAccountChangedListener(Lcom/kingsoft/mail/compose/FromAddressSpinner$OnAccountChangedListener;)V

    .line 1847
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V

    .line 1848
    return-void
.end method

.method private initFromDraftMessage(Lcom/kingsoft/mail/providers/Message;)V
    .locals 13
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 2130
    sget-object v9, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Intializing draft from previous draft message: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2133
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    .line 2134
    iget-wide v9, p1, Lcom/kingsoft/mail/providers/Message;->id:J

    iput-wide v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    .line 2135
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2136
    iget v9, p1, Lcom/kingsoft/mail/providers/Message;->draftType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mForward:Z

    .line 2137
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 2139
    .local v8, "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2140
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2142
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getBccAddressesUnescaped()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->addBccAddresses(Ljava/util/Collection;)V

    .line 2143
    iget-boolean v9, p1, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v9, :cond_1

    .line 2144
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 2145
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 2146
    .local v0, "a":Lcom/kingsoft/mail/providers/Attachment;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachmentAndUpdateView(Lcom/kingsoft/mail/providers/Attachment;)V

    goto :goto_1

    .line 2136
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Attachment;
    .end local v1    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 2149
    .restart local v8    # "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-boolean v9, p1, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    if-eqz v9, :cond_4

    iget v7, p1, Lcom/kingsoft/mail/providers/Message;->quotedTextOffset:I

    .line 2152
    .local v7, "quotedTextIndex":I
    :goto_2
    const/4 v6, 0x0

    .line 2153
    .local v6, "quotedText":Ljava/lang/CharSequence;
    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2154
    const-string/jumbo v4, ""

    .line 2155
    .local v4, "htmlText":Ljava/lang/String;
    const/4 v9, -0x1

    if-le v7, v9, :cond_5

    .line 2158
    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-static {v9}, Lcom/kingsoft/mail/compose/QuotedTextView;->findQuotedTextIndex(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2160
    const/4 v9, -0x1

    if-le v7, v9, :cond_2

    .line 2162
    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2163
    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    iget-object v10, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2169
    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v9, v4}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 2184
    .end local v4    # "htmlText":Ljava/lang/String;
    :goto_4
    const/4 v9, -0x1

    if-le v7, v9, :cond_3

    if-eqz v6, :cond_3

    .line 2185
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    iget-boolean v10, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mForward:Z

    invoke-virtual {v9, v6, v10}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedTextFromDraft(Ljava/lang/CharSequence;Z)V

    .line 2187
    :cond_3
    return-void

    .line 2149
    .end local v6    # "quotedText":Ljava/lang/CharSequence;
    .end local v7    # "quotedTextIndex":I
    :cond_4
    const/4 v7, -0x1

    goto :goto_2

    .line 2167
    .restart local v4    # "htmlText":Ljava/lang/String;
    .restart local v6    # "quotedText":Ljava/lang/CharSequence;
    .restart local v7    # "quotedTextIndex":I
    :cond_5
    iget-object v4, p1, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    goto :goto_3

    .line 2171
    .end local v4    # "htmlText":Ljava/lang/String;
    :cond_6
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    .line 2173
    .local v2, "body":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-le v7, v9, :cond_7

    .line 2174
    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 2175
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, -0x1

    if-le v7, v9, :cond_9

    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2178
    .local v3, "bodyText":Ljava/lang/CharSequence;
    :goto_5
    const/4 v9, -0x1

    if-le v7, v9, :cond_8

    .line 2179
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p1, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2182
    :cond_8
    :goto_6
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    goto :goto_4

    .line 2175
    .end local v3    # "bodyText":Ljava/lang/CharSequence;
    :cond_9
    iget-object v3, p1, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const-string/jumbo v3, ""

    goto :goto_5

    .line 2179
    .restart local v3    # "bodyText":Ljava/lang/CharSequence;
    :cond_b
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private initFromRefMessage(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1922
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->setFieldsFromRefMessage(I)V

    .line 1944
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v0, v1, v2, v1}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 1952
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateHideOrShowCcBcc()V

    .line 1953
    return-void
.end method

.method private initFromSpinner(Landroid/os/Bundle;I)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "action"    # I

    .prologue
    .line 1487
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget v7, v7, Lcom/kingsoft/mail/providers/Message;->draftType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1489
    const/4 p2, -0x1

    .line 1491
    :cond_0
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    iget-object v10, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v7, p2, v8, v9, v10}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->initialize(ILcom/kingsoft/mail/providers/Account;[Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)V

    .line 1492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .local v0, "AccountString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1494
    .local v2, "i":I
    const/4 v6, 0x0

    .line 1495
    .local v6, "selected":I
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v7}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getReplyFromAccounts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1496
    .local v5, "mReplyaccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v7, v5, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    iget-object v7, v5, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v2

    .line 1498
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1499
    goto :goto_0

    .line 1500
    .end local v5    # "mReplyaccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v7, v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    .line 1501
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v7, v6}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    .line 1502
    if-eqz p1, :cond_3

    .line 1503
    const-string/jumbo v7, "replyFromAccount"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1504
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const-string/jumbo v8, "replyFromAccount"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->deserialize(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1513
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-nez v7, :cond_4

    .line 1514
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    if-eqz v7, :cond_7

    .line 1515
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->getReplyFromAccountFromDraft(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1522
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-nez v7, :cond_5

    .line 1523
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDefaultReplyFromAccount(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1526
    :cond_5
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setCurrentAccount(Lcom/kingsoft/mail/providers/ReplyFromAccount;)V

    .line 1528
    iget v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    const/4 v4, 0x1

    .line 1529
    .local v4, "isFeedbackMode":Z
    :goto_3
    if-nez v4, :cond_9

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v7}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    iget-boolean v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->hebingflag:Z

    if-eqz v7, :cond_9

    .line 1533
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromStaticText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1535
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1536
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setVisibility(I)V

    .line 1550
    :goto_4
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    .line 1552
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->copySystemContact()V

    .line 1553
    return-void

    .line 1506
    .end local v4    # "isFeedbackMode":Z
    :cond_6
    const-string/jumbo v7, "fromAccountString"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1507
    const-string/jumbo v7, "fromAccountString"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, "accountString":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v7, v1}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getMatchingReplyFromAccount(Ljava/lang/String;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    goto :goto_1

    .line 1517
    .end local v1    # "accountString":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v7, :cond_4

    .line 1518
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->getReplyFromAccountForReply(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    goto :goto_2

    .line 1528
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 1539
    .restart local v4    # "isFeedbackMode":Z
    :cond_9
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromStaticText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1541
    if-eqz v4, :cond_a

    .line 1542
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromStaticText:Landroid/widget/TextView;

    const v8, 0x7f1001ab

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1546
    :goto_5
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1547
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setVisibility(I)V

    goto :goto_4

    .line 1544
    :cond_a
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromStaticText:Landroid/widget/TextView;

    const v8, 0x7f100129

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method

.method private initQuotedTextFromRefMessage(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 3
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 2577
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_1

    .line 2579
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    if-eq p2, v2, :cond_2

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedText(ILcom/kingsoft/mail/providers/Message;Z)V

    .line 2582
    :cond_1
    return-void

    .line 2579
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRecipients()V
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setupRecipients(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 2888
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setupRecipients(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 2889
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setupRecipients(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 2890
    return-void
.end method

.method private isAddPreMessageAttachment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1959
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAction()I

    move-result v0

    .line 1960
    .local v0, "action":I
    if-eq v0, v3, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v2, :cond_0

    .line 1977
    iget-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mHasPromptAddAttachment:Z

    if-nez v2, :cond_0

    .line 1981
    iput-boolean v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mHasPromptAddAttachment:Z

    .line 1984
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1985
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    const v2, 0x7f1000c7

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 1990
    const v2, 0x7f1000c9

    new-instance v3, Lcom/kingsoft/mail/compose/ComposeActivity$11;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$11;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1999
    const v2, 0x7f1000c8

    new-instance v3, Lcom/kingsoft/mail/compose/ComposeActivity$12;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$12;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 2006
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private isBodyBlank(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "bodyText"    # Ljava/lang/String;

    .prologue
    .line 3523
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3524
    const/4 v1, 0x1

    .line 3535
    :goto_0
    return v1

    .line 3527
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3528
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3529
    .local v0, "lastIndex":I
    if-lez v0, :cond_1

    .line 3530
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3531
    const-string/jumbo v1, ""

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3535
    .end local v0    # "lastIndex":I
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private isEditdraftAction()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 3004
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    .line 3005
    .local v2, "savedState":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3007
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3008
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3013
    .local v0, "event":I
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 3010
    .end local v0    # "event":I
    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "event":I
    goto :goto_0

    .line 3013
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isFeedbackAction()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2991
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    .line 2992
    .local v2, "savedState":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2994
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2995
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3000
    .local v0, "event":I
    :goto_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 2997
    .end local v0    # "event":I
    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "event":I
    goto :goto_0

    .line 3000
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isFeedbackBlank()Z
    .locals 2

    .prologue
    .line 3108
    const/4 v0, 0x0

    .line 3109
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isSubjectEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3111
    const/4 v0, 0x1

    .line 3114
    :cond_0
    return v0
.end method

.method private isValid(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1481
    :goto_0
    return v2

    .line 1480
    :cond_0
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1481
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v0

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J
    .param p4, "action"    # I
    .param p5, "toAddress"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;
    .param p7, "quotedText"    # Ljava/lang/String;
    .param p8, "subject"    # Ljava/lang/String;
    .param p9, "extraValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p10, "attIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {p0 .. p10}, Lcom/kingsoft/mail/compose/ComposeActivity;->generateComposeIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 621
    .local v0, "targetItent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    return-void
.end method

.method private logSendOrSave(Z)V
    .locals 8
    .param p1, "save"    # Z

    .prologue
    .line 4194
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    if-nez v0, :cond_1

    .line 4211
    :cond_0
    :goto_0
    return-void

    .line 4198
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "message_save"

    .line 4199
    .local v1, "category":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4200
    .local v6, "attachmentCount":I
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getActionString(I)Ljava/lang/String;

    move-result-object v2

    .line 4203
    .local v2, "msgType":Ljava/lang/String;
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 4204
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 4205
    .local v3, "label":Ljava/lang/String;
    int-to-long v4, v6

    .line 4210
    .local v4, "value":J
    :goto_2
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 4198
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "msgType":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "value":J
    .end local v6    # "attachmentCount":I
    :cond_2
    const-string/jumbo v1, "message_send"

    goto :goto_1

    .line 4207
    .restart local v1    # "category":Ljava/lang/String;
    .restart local v2    # "msgType":Ljava/lang/String;
    .restart local v6    # "attachmentCount":I
    :cond_3
    const/4 v3, 0x0

    .line 4208
    .restart local v3    # "label":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .restart local v4    # "value":J
    goto :goto_2
.end method

.method private obtainAccount(Landroid/content/Intent;)Lcom/kingsoft/mail/providers/Account;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    .line 858
    const/4 v1, 0x0

    .line 859
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    const/4 v2, 0x0

    .line 860
    .local v2, "accountExtra":Ljava/lang/Object;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 861
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "account"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 862
    instance-of v11, v2, Lcom/kingsoft/mail/providers/Account;

    if-eqz v11, :cond_0

    .line 863
    check-cast v2, Lcom/kingsoft/mail/providers/Account;

    .line 945
    .end local v2    # "accountExtra":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 864
    .restart local v2    # "accountExtra":Ljava/lang/Object;
    :cond_0
    instance-of v11, v2, Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 866
    check-cast v2, Ljava/lang/String;

    .end local v2    # "accountExtra":Ljava/lang/Object;
    invoke-static {v2}, Lcom/kingsoft/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 867
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 868
    goto :goto_0

    .line 871
    :cond_1
    const-string/jumbo v11, "account"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "account"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 875
    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 876
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 877
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    new-array v5, v11, [Ljava/lang/String;

    .line 878
    .local v5, "emails":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_4

    .line 879
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    .line 878
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 871
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_3
    const-string/jumbo v11, "selectedAccount"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 881
    .restart local v5    # "emails":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_4
    new-instance v11, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f100264

    invoke-virtual {v11, v12}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v13}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/kingsoft/mail/compose/ComposeActivity$1;

    invoke-direct {v12, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$1;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v11, v5, v12}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    .line 898
    .local v3, "alertDialog":Landroid/app/Dialog;
    new-instance v11, Lcom/kingsoft/mail/compose/ComposeActivity$2;

    invoke-direct {v11, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$2;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 909
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 913
    .end local v3    # "alertDialog":Landroid/app/Dialog;
    .end local v5    # "emails":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_5
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v10

    .line 914
    .local v10, "provider":Lcom/kingsoft/mail/providers/MailAppProvider;
    invoke-virtual {v10}, Lcom/kingsoft/mail/providers/MailAppProvider;->getLastSentFromAccount()Ljava/lang/String;

    move-result-object v8

    .line 915
    .local v8, "lastAccountUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 916
    invoke-virtual {v10}, Lcom/kingsoft/mail/providers/MailAppProvider;->getLastViewedAccount()Ljava/lang/String;

    move-result-object v8

    .line 918
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 919
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "accountExtra":Landroid/net/Uri;
    move-object v12, v2

    .line 922
    .end local v2    # "accountExtra":Landroid/net/Uri;
    .end local v8    # "lastAccountUri":Ljava/lang/String;
    .end local v10    # "provider":Lcom/kingsoft/mail/providers/MailAppProvider;
    :goto_3
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v11, v11

    if-lez v11, :cond_b

    .line 923
    instance-of v11, v12, Ljava/lang/String;

    if-eqz v11, :cond_8

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 927
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .local v4, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_a

    aget-object v0, v4, v7

    .line 928
    .local v0, "a":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 929
    move-object v1, v0

    .line 927
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 932
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    .end local v4    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_8
    instance-of v11, v12, Landroid/net/Uri;

    if-eqz v11, :cond_a

    .line 935
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .restart local v4    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_5
    if-ge v7, v9, :cond_a

    aget-object v0, v4, v7

    .line 936
    .restart local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    iget-object v11, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 937
    move-object v1, v0

    .line 935
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 941
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    .end local v4    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :cond_a
    if-nez v1, :cond_b

    .line 942
    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    aget-object v1, v11, v13

    :cond_b
    move-object v2, v1

    .line 945
    goto/16 :goto_0

    :cond_c
    move-object v12, v2

    goto :goto_3
.end method

.method private onAppUpPressed()V
    .locals 2

    .prologue
    .line 3044
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mLaunchedFromEmail:Z

    .line 3045
    iget-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mLaunchedFromEmail:Z

    if-eqz v1, :cond_0

    .line 3049
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->onBackPressed()V

    .line 3070
    :goto_0
    return-void

    .line 3058
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->createViewInboxIntent(Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 3060
    .local v0, "mailIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 3061
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    goto :goto_0

    .line 3065
    :cond_1
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3068
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivity(Landroid/content/Intent;)V

    .line 3069
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    goto :goto_0
.end method

.method public static registerTestSendOrSaveCallback(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;)V
    .locals 2
    .param p0, "testCallback"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    .prologue
    .line 4812
    sget-object v0, Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 4813
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempting to register more than one test callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4816
    :cond_0
    sput-object p0, Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    .line 4817
    return-void
.end method

.method public static removeComposingSpans(Landroid/text/Spanned;)Landroid/text/SpannableString;
    .locals 2
    .param p0, "body"    # Landroid/text/Spanned;

    .prologue
    .line 3908
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3909
    .local v0, "messageBody":Landroid/text/SpannableString;
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 3911
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 3914
    return-object v0
.end method

.method private replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 5000
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 5002
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 5003
    const v2, 0x7f0c023f

    invoke-virtual {v0, v2, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 5004
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v1

    .line 5005
    .local v1, "transactionId":I
    return v1
.end method

.method private static replacePlus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "toReplace"    # Ljava/lang/String;

    .prologue
    .line 2316
    const-string/jumbo v0, "+"

    const-string/jumbo v1, "%2B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reply(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msg"    # J

    .prologue
    const/4 v5, 0x0

    .line 523
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 526
    return-void
.end method

.method public static replyAll(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 533
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 536
    return-void
.end method

.method public static reportFeedback(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 554
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    :cond_0
    const-string/jumbo v1, "fromemail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string/jumbo v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string/jumbo v1, "to"

    const-string/jumbo v2, "wpsmail@kingsoft.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method public static reportRenderingFeedback(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JLjava/lang/String;)V
    .locals 11
    .param p0, "launcher"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msgId"    # J
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 564
    const/4 v4, 0x2

    const-string/jumbo v5, "android-gmail-readability@google.com"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->launch(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 568
    return-void
.end method

.method private saveIfNeeded()V
    .locals 3

    .prologue
    const v2, 0x7f100133

    const/4 v1, 0x1

    .line 4551
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_0

    .line 4558
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onBackPressed()V

    .line 4594
    :goto_0
    return-void

    .line 4563
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4564
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 4568
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4569
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isEditdraftAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4570
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    if-eqz v0, :cond_3

    .line 4571
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    goto :goto_0

    .line 4573
    :cond_3
    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 4574
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 4576
    :cond_4
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 4577
    :cond_5
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    if-eqz v0, :cond_7

    .line 4578
    :cond_6
    invoke-direct {p0, v2, v1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSaveConfirmDialog(IZZ)V

    goto :goto_0

    .line 4580
    :cond_7
    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 4581
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 4584
    :cond_8
    invoke-direct {p0, v2, v1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSaveConfirmDialog(IZZ)V

    goto :goto_0

    .line 4588
    :cond_9
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isEditdraftAction()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4589
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    .line 4591
    :cond_a
    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 4592
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private saveIfTimed()V
    .locals 2

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_1

    .line 4618
    :cond_0
    :goto_0
    return-void

    .line 4608
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4612
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    if-eqz v0, :cond_3

    .line 4613
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 4614
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    goto :goto_0

    .line 4616
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->startNextSaveDraft()V

    goto :goto_0
.end method

.method private saveRequestMap()V
    .locals 0

    .prologue
    .line 4143
    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 1257
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1266
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v7, v0, Landroid/widget/EditText;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 1267
    check-cast v1, Landroid/widget/EditText;

    .line 1268
    .local v1, "focusEditText":Landroid/widget/EditText;
    const-string/jumbo v7, "focusSelectionStart"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1270
    const-string/jumbo v7, "focusSelectionEnd"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1274
    .end local v1    # "focusEditText":Landroid/widget/EditText;
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v7}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getReplyFromAccounts()Ljava/util/List;

    move-result-object v4

    .line 1276
    .local v4, "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v7}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getSelectedItemPosition()I

    move-result v5

    .line 1278
    .local v5, "selectedPos":I
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-object v6, v7

    .line 1281
    .local v6, "selectedReplyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :goto_1
    if-eqz v6, :cond_7

    .line 1282
    const-string/jumbo v7, "replyFromAccount"

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->serialize()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v7, "account"

    iget-object v9, v6, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1290
    :goto_2
    iget-wide v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-nez v7, :cond_3

    iget v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRequestId:I

    if-eqz v7, :cond_3

    .line 1293
    const-string/jumbo v7, "requestId"

    iget v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRequestId:I

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1297
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getMode()I

    move-result v3

    .line 1298
    .local v3, "mode":I
    const-string/jumbo v7, "action"

    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1300
    invoke-direct {p0, v6, v3, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->createMessage(Lcom/kingsoft/mail/providers/ReplyFromAccount;IZ)Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    .line 1302
    .local v2, "message":Lcom/kingsoft/mail/providers/Message;
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    if-eqz v7, :cond_4

    .line 1303
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget-wide v9, v7, Lcom/kingsoft/mail/providers/Message;->id:J

    iput-wide v9, v2, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 1304
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    iput-object v7, v2, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    .line 1305
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    iput-object v7, v2, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 1307
    :cond_4
    const-string/jumbo v7, "extraMessage"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1309
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v7, :cond_8

    .line 1310
    const-string/jumbo v7, "in-reference-to-message"

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1317
    :cond_5
    :goto_3
    const-string/jumbo v7, "showCc"

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/CcBccView;->isCcVisible()Z

    move-result v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1318
    const-string/jumbo v7, "showBcc"

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/CcBccView;->isBccVisible()Z

    move-result v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1319
    const-string/jumbo v7, "respondedInline"

    iget-boolean v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRespondedInline:Z

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1320
    const-string/jumbo v9, "saveEnabled"

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_4
    invoke-virtual {p1, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1321
    const-string/jumbo v7, "attachmentPreviews"

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v8}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachmentPreviews()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1324
    const-string/jumbo v7, "extra-values"

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1278
    .end local v2    # "message":Lcom/kingsoft/mail/providers/Message;
    .end local v3    # "mode":I
    .end local v6    # "selectedReplyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1287
    .restart local v6    # "selectedReplyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :cond_7
    const-string/jumbo v7, "account"

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 1311
    .restart local v2    # "message":Lcom/kingsoft/mail/providers/Message;
    .restart local v3    # "mode":I
    :cond_8
    iget-boolean v7, v2, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    if-eqz v7, :cond_5

    .line 1314
    const-string/jumbo v7, "quotedText"

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v9}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextIfIncluded()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1320
    :cond_9
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private scrollToAttachmentView()V
    .locals 3

    .prologue
    .line 2013
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ComposeScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 2014
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/ComposeScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/compose/ComposeScrollView;->smoothScrollTo(II)V

    .line 2017
    :cond_0
    return-void
.end method

.method private sendOrSave(ZZ)V
    .locals 14
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 3942
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3943
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ComposeActivity send or save is user a monkey"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4104
    :cond_0
    :goto_0
    return-void

    .line 3946
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 3948
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3950
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeComposingSpans()V

    .line 3951
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->addLinks(I)Z

    .line 3952
    new-instance v12, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3953
    .local v12, "bodyText":Ljava/lang/StringBuffer;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFeedbackVersionInfo()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->removeComposingSpans(Landroid/text/Spanned;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3954
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3961
    .end local v12    # "bodyText":Ljava/lang/StringBuffer;
    .local v4, "body":Ljava/lang/CharSequence;
    :goto_1
    new-instance v6, Lcom/kingsoft/mail/compose/ComposeActivity$15;

    invoke-direct {v6, p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity$15;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Z)V

    .line 4066
    .local v6, "callback":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 4068
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 4069
    new-instance v13, Landroid/os/HandlerThread;

    const-string/jumbo v0, "Send Message Task Thread"

    invoke-direct {v13, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4071
    .local v13, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 4073
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 4076
    .end local v13    # "handlerThread":Landroid/os/HandlerThread;
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->createMessage(Lcom/kingsoft/mail/providers/ReplyFromAccount;IZ)Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    .line 4077
    .local v2, "msg":Lcom/kingsoft/mail/providers/Message;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextIfIncluded()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    iget-object v10, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v11, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    move-object v0, p0

    move v8, p1

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSaveInternal(Landroid/content/Context;Lcom/kingsoft/mail/providers/ReplyFromAccount;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Message;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZILcom/kingsoft/mail/providers/ReplyFromAccount;Landroid/content/ContentValues;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRequestId:I

    .line 4086
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 4088
    if-eqz p1, :cond_6

    const v0, 0x7f100275

    :goto_2
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4095
    :cond_3
    if-nez p1, :cond_4

    .line 4096
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 4098
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V

    .line 4101
    if-eqz p2, :cond_0

    .line 4102
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 3956
    .end local v2    # "msg":Lcom/kingsoft/mail/providers/Message;
    .end local v4    # "body":Ljava/lang/CharSequence;
    .end local v6    # "callback":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeComposingSpans()V

    .line 3957
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->addLinks(I)Z

    .line 3958
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->getHtml()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "body":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 4088
    .restart local v2    # "msg":Lcom/kingsoft/mail/providers/Message;
    .restart local v6    # "callback":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    :cond_6
    const v0, 0x7f100375

    goto :goto_2
.end method

.method static sendOrSaveInternal(Landroid/content/Context;Lcom/kingsoft/mail/providers/ReplyFromAccount;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Message;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZILcom/kingsoft/mail/providers/ReplyFromAccount;Landroid/content/ContentValues;)I
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "replyFromAccount"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .param p2, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p4, "body"    # Ljava/lang/CharSequence;
    .param p5, "quotedText"    # Ljava/lang/CharSequence;
    .param p6, "callback"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "save"    # Z
    .param p9, "composeMode"    # I
    .param p10, "draftAccount"    # Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .param p11, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    .line 3821
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3823
    .local v7, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3826
    .local v8, "refMessageId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putToAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getCcAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putCcAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 3828
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getBccAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putBccAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 3830
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putCustomFromAddress(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3833
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    invoke-static {v7, v5, v6}, Lcom/kingsoft/mail/providers/MessageModification;->putFlags(Landroid/content/ContentValues;J)V

    .line 3835
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3838
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3840
    .local v13, "htmlBody":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v14, 0x1

    .line 3841
    .local v14, "includeQuotedText":Z
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3842
    .local v12, "fullBody":Ljava/lang/StringBuilder;
    if-eqz v14, :cond_0

    .line 3844
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3845
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/compose/QuotedTextView;->containsQuotedText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3846
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextOffset(Ljava/lang/String;)I

    move-result v15

    .line 3847
    .local v15, "pos":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int v16, v5, v15

    .line 3848
    .local v16, "quoteStartPos":I
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3849
    move/from16 v0, v16

    invoke-static {v7, v0}, Lcom/kingsoft/mail/providers/MessageModification;->putQuoteStartPos(Landroid/content/ContentValues;I)V

    .line 3850
    const/4 v5, 0x2

    move/from16 v0, p9

    if-ne v0, v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putForward(Landroid/content/ContentValues;Z)V

    .line 3853
    invoke-static {v7, v14}, Lcom/kingsoft/mail/providers/MessageModification;->putAppendRefMessageContent(Landroid/content/ContentValues;Z)V

    .line 3862
    .end local v15    # "pos":I
    .end local v16    # "quoteStartPos":I
    .end local v18    # "text":Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-static/range {p9 .. p9}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDraftType(I)I

    move-result v11

    .line 3863
    .local v11, "draftType":I
    invoke-static {v7, v11}, Lcom/kingsoft/mail/providers/MessageModification;->putDraftType(Landroid/content/ContentValues;I)V

    .line 3865
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putBodyHtml(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3881
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/kingsoft/mail/providers/MessageModification;->putAttachments(Landroid/content/ContentValues;Ljava/util/List;)V

    .line 3882
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3883
    invoke-static {v7, v8}, Lcom/kingsoft/mail/providers/MessageModification;->putRefMessageId(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3885
    :cond_1
    if-eqz p11, :cond_2

    .line 3886
    move-object/from16 v0, p11

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3888
    :cond_2
    new-instance v4, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p8

    invoke-direct/range {v4 .. v10}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/ReplyFromAccount;Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;Z)V

    .line 3891
    .local v4, "sendOrSaveMessage":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    new-instance v17, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p10

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;Lcom/kingsoft/mail/providers/ReplyFromAccount;)V

    .line 3894
    .local v17, "sendOrSaveTask":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;)V

    .line 3897
    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3899
    invoke-virtual {v4}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v5

    return v5

    .line 3823
    .end local v4    # "sendOrSaveMessage":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    .end local v8    # "refMessageId":Ljava/lang/String;
    .end local v11    # "draftType":I
    .end local v12    # "fullBody":Ljava/lang/StringBuilder;
    .end local v13    # "htmlBody":Ljava/lang/String;
    .end local v14    # "includeQuotedText":Z
    .end local v17    # "sendOrSaveTask":Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;
    :cond_3
    const-string/jumbo v8, ""

    goto/16 :goto_0

    .line 3840
    .restart local v8    # "refMessageId":Ljava/lang/String;
    .restart local v13    # "htmlBody":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3850
    .restart local v12    # "fullBody":Ljava/lang/StringBuilder;
    .restart local v14    # "includeQuotedText":Z
    .restart local v15    # "pos":I
    .restart local v16    # "quoteStartPos":I
    .restart local v18    # "text":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 3856
    .end local v15    # "pos":I
    .end local v16    # "quoteStartPos":I
    :cond_6
    sget-object v5, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Couldn\'t find quoted text"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3859
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private setFieldsFromRefMessage(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x2

    .line 2115
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->setSubject(Lcom/kingsoft/mail/providers/Message;I)V

    .line 2117
    if-ne p1, v1, :cond_0

    .line 2118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mForward:Z

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {p0, v0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initRecipientsFromRefMessage(Lcom/kingsoft/mail/providers/Message;I)V

    .line 2121
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initQuotedTextFromRefMessage(Lcom/kingsoft/mail/providers/Message;I)V

    .line 2122
    if-eq p1, v1, :cond_1

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-eqz v0, :cond_2

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V

    .line 2124
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initAttachments(Lcom/kingsoft/mail/providers/Message;)V

    .line 2125
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/AttachmentsView;->setAttachmentChangesListener(Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentAddedOrDeletedListener;)V

    .line 2127
    :cond_2
    return-void
.end method

.method private setFocus(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 988
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget v0, v1, Lcom/kingsoft/mail/providers/Message;->draftType:I

    .line 990
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 998
    :pswitch_0
    const/4 p1, 0x0

    .line 1002
    .end local v0    # "type":I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1017
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->focusBody()V

    .line 1020
    :goto_1
    return-void

    .line 993
    .restart local v0    # "type":I
    :pswitch_2
    const/4 p1, -0x1

    .line 994
    goto :goto_0

    .line 1004
    .end local v0    # "type":I
    :pswitch_3
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    .line 1008
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->focusBody()V

    .line 1009
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_1

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1002
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setSubject(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 3
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->buildFormattedSubject(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2884
    :cond_0
    return-void
.end method

.method private setupRecipients(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 5
    .param p1, "view"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 2893
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setThreshold(I)V

    .line 2894
    new-instance v3, Lcom/kingsoft/mail/compose/RecipientAdapter;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v3, p0, v4}, Lcom/kingsoft/mail/compose/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2895
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    if-nez v3, :cond_1

    .line 2896
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 2897
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 2898
    .local v2, "offset":I
    move-object v0, v1

    .line 2899
    .local v0, "account":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 2900
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2902
    :cond_0
    new-instance v3, Lcom/kingsoft/common/Rfc822Validator;

    invoke-direct {v3, v0}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    .line 2904
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "offset":I
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 2905
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2906
    return-void
.end method

.method private shouldSave()Z
    .locals 2

    .prologue
    .line 3464
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3470
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->isShowAttachment:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showAttachmentTooBigToast(I)V
    .locals 4
    .param p1, "errorRes"    # I

    .prologue
    .line 2422
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Settings;->getMaxAttachmentSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "maxSize":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showErrorToast(Ljava/lang/String;)V

    .line 2426
    return-void
.end method

.method private showCcBcc(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 2601
    if-eqz p1, :cond_1

    const-string/jumbo v2, "showCc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2602
    const-string/jumbo v2, "showCc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2603
    .local v1, "showCc":Z
    const-string/jumbo v2, "showBcc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2604
    .local v0, "showBcc":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 2605
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 2608
    .end local v0    # "showBcc":Z
    .end local v1    # "showCc":Z
    :cond_1
    return-void
.end method

.method private showCcBccViews()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4165
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v0, v1, v1, v1}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 4166
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 4167
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4169
    :cond_0
    return-void
.end method

.method private showErrorToast(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2429
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2430
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2431
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2433
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2434
    return-void
.end method

.method private showRecipientErrorDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 3445
    invoke-static {p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    move-result-object v0

    .line 3447
    .local v0, "frag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "recipient error"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3448
    return-void
.end method

.method private showSaveConfirmDialog(IZZ)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "save"    # Z
    .param p3, "showToast"    # Z

    .prologue
    .line 3789
    invoke-static {p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->newInstance(IZZ)Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;

    move-result-object v0

    .line 3791
    .local v0, "frag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "save confirm"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3792
    return-void
.end method

.method private showSendConfirmDialog(IZZ)V
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "save"    # Z
    .param p3, "showToast"    # Z

    .prologue
    .line 3728
    invoke-static {p1, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->newInstance(IZZ)Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    move-result-object v0

    .line 3730
    .local v0, "frag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "send confirm"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3731
    return-void
.end method

.method private showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 4984
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v0

    .line 4985
    .local v0, "fragment":Lcom/kingsoft/mail/ui/WaitFragment;
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initActionBar2()V

    .line 4986
    if-eqz v0, :cond_0

    .line 4987
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/WaitFragment;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 4993
    :goto_0
    return-void

    .line 4989
    :cond_0
    const v1, 0x7f0c023f

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4990
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/kingsoft/mail/ui/WaitFragment;->newInstance(Lcom/kingsoft/mail/providers/Account;Z)Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v1

    const/16 v2, 0x1001

    const-string/jumbo v3, "wait-fragment"

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;)I

    goto :goto_0
.end method

.method private startNextSaveDraft()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4793
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4794
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4797
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedSendOrDiscard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mResumeOrPause:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4798
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4800
    :cond_1
    return-void
.end method

.method private stopSaveDraftTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4803
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4804
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4806
    :cond_0
    return-void
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3539
    const-string/jumbo v0, ""

    .line 3540
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3542
    :try_start_0
    const-string/jumbo v1, "^[\u3000*| *| *|\\s*]*"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[\u3000*| *| *|\\s*]*$"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3547
    :cond_0
    :goto_0
    return-object v0

    .line 3544
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static updateActionIntent(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "action"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 511
    const-string/jumbo v0, "fromemail"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string/jumbo v0, "account"

    invoke-virtual {p3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    const-string/jumbo v0, "in-reference-to-message-uri"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    return-object p3
.end method

.method private updateAttachmentsView()V
    .locals 9

    .prologue
    .line 4108
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    iget-boolean v7, v7, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v7, :cond_1

    .line 4109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4110
    .local v3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Message;->getId()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 4112
    .local v4, "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 4113
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertAttachmentToUiAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v2

    .line 4114
    .local v2, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4117
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :cond_0
    new-instance v7, Lcom/kingsoft/mail/compose/ComposeActivity$16;

    invoke-direct {v7, p0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity$16;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/util/List;)V

    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4134
    .end local v0    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    .end local v4    # "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    return-void
.end method

.method private updateBccMyself()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2030
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    if-nez v3, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/compose/CcBccView;->isBccVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2037
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    .line 2038
    .local v2, "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getBccToMyself(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2039
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 2040
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/kingsoft/mail/compose/ComposeActivity$13;

    invoke-direct {v4, p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$13;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2048
    .end local v2    # "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    .line 2049
    .restart local v2    # "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(Ljava/lang/String;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 2050
    .local v1, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getBccToMyself(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2052
    if-nez v1, :cond_0

    .line 2053
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    invoke-direct {p0, v0, v3, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressToList(Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 2056
    :cond_3
    if-eqz v1, :cond_0

    .line 2057
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v3, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto/16 :goto_0
.end method

.method private updateHideOrShowCcBcc()V
    .locals 4

    .prologue
    .line 2586
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/CcBccView;->isCcVisible()Z

    move-result v1

    .line 2587
    .local v1, "ccVisible":Z
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/CcBccView;->isBccVisible()Z

    move-result v0

    .line 2588
    .local v0, "bccVisible":Z
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 2589
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    .line 2590
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2591
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    if-nez v1, :cond_2

    const v2, 0x7f1000c3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2598
    :cond_1
    :goto_1
    return-void

    .line 2591
    :cond_2
    const v2, 0x7f1000c2

    goto :goto_0

    .line 2595
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateHideOrShowQuotedText(Z)V
    .locals 2
    .param p1, "showQuotedText"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    .line 983
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setUpperDividerVisible(Z)V

    .line 985
    return-void

    .line 983
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateValidator()V
    .locals 1

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateValidator(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 4453
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateValidator(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 4454
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateValidator(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 4455
    return-void
.end method

.method private updateValidator(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 5
    .param p1, "view"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 4458
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    if-nez v3, :cond_1

    .line 4476
    :cond_0
    :goto_0
    return-void

    .line 4462
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 4463
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4467
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setThreshold(I)V

    .line 4468
    new-instance v3, Lcom/kingsoft/mail/compose/RecipientAdapter;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v3, p0, v4}, Lcom/kingsoft/mail/compose/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4469
    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 4470
    .local v2, "offset":I
    move-object v0, v1

    .line 4471
    .local v0, "account":Ljava/lang/String;
    if-lez v2, :cond_2

    .line 4472
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4474
    :cond_2
    new-instance v3, Lcom/kingsoft/common/Rfc822Validator;

    invoke-direct {v3, v0}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    .line 4475
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    invoke-virtual {p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    goto :goto_0
.end method


# virtual methods
.method addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 1
    .param p2, "list"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingsoft/ex/chips/RecipientEditTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2801
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    .line 2802
    return-void
.end method

.method addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V
    .locals 4
    .param p2, "list"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingsoft/ex/chips/RecipientEditTextView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2807
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "initSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v1

    .line 2808
    .local v1, "bak":I
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 2809
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2815
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-direct {p0, v0, p2, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressToList(Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    goto :goto_0

    .line 2819
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 2820
    return-void
.end method

.method public addAttachmentAndUpdateView(Landroid/content/Intent;)V
    .locals 10
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2616
    const/4 v5, 0x0

    .line 2617
    .local v5, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 2618
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2621
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_2

    move v3, v6

    .line 2622
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2624
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/kingsoft/mail/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 2625
    .local v4, "strPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    .line 2628
    .end local v4    # "strPath":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    .line 2629
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    .line 2630
    .local v1, "exists":Z
    if-eqz v1, :cond_4

    .line 2631
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachmentAndUpdateView(Landroid/net/Uri;)V

    .line 2642
    .end local v1    # "exists":Z
    :goto_2
    return-void

    .end local v3    # "isKitKat":Z
    :cond_2
    move v3, v7

    .line 2621
    goto :goto_0

    .line 2625
    .restart local v3    # "isKitKat":Z
    .restart local v4    # "strPath":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 2633
    .end local v4    # "strPath":Ljava/lang/String;
    .restart local v1    # "exists":Z
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2634
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1000da

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2635
    .local v2, "fileNotExists":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 2639
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "exists":Z
    .end local v2    # "fileNotExists":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "attachment\'s uri is invalid!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public addAttachmentAndUpdateView(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 2645
    if-nez p1, :cond_0

    .line 2659
    :goto_0
    return-void

    .line 2649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/compose/AttachmentsView;->generateLocalAttachment(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachmentAndUpdateView(Lcom/kingsoft/mail/providers/Attachment;)V
    :try_end_0
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2651
    :catch_0
    move-exception v0

    .line 2652
    .local v0, "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v1, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error adding attachment"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2653
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Settings;->getMaxAttachmentSize()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->showErrorToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAttachmentAndUpdateView(Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 6
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 2663
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v4, p1}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v1

    .line 2664
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 2665
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    .line 2666
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V
    :try_end_0
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    .end local v1    # "size":J
    :cond_0
    :goto_0
    return-void

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    .local v0, "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error adding attachment"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2670
    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    goto :goto_0
.end method

.method public addAttachments(Ljava/util/List;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 2392
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    const-wide/16 v5, 0x0

    .line 2393
    .local v5, "size":J
    const/4 v2, 0x0

    .line 2394
    .local v2, "error":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    const/4 v4, 0x0

    .line 2395
    .local v4, "iAttSize":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 2397
    .local v0, "a":Lcom/kingsoft/mail/providers/Attachment;
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v7, v8, v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->addAttachment(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Attachment;)J
    :try_end_0
    .catch Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    add-long/2addr v5, v7

    .line 2398
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2399
    :catch_0
    move-exception v1

    .line 2400
    .local v1, "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    move-object v2, v1

    goto :goto_0

    .line 2403
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Attachment;
    .end local v1    # "e":Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;
    :cond_0
    if-eqz v2, :cond_1

    .line 2404
    sget-object v7, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error adding attachment"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v2, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 2406
    const v7, 0x7f1003b0

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    .line 2411
    :cond_1
    :goto_1
    return-wide v5

    .line 2408
    :cond_2
    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/AttachmentsView$AttachmentFailureException;->getErrorRes()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->showAttachmentTooBigToast(I)V

    goto :goto_1
.end method

.method protected addCcAddressesToList(Ljava/util/List;Ljava/util/List;Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 8
    .param p3, "list"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Lcom/kingsoft/ex/chips/RecipientEditTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2767
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    if-nez p2, :cond_1

    .line 2768
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 2769
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 2770
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2771
    .local v0, "address":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 2769
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2775
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 2776
    .local v1, "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 2777
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2778
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2780
    .restart local v0    # "address":Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 2777
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2787
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 4651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 4652
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V

    .line 4653
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeScrollView;->setScrollable()V

    .line 4654
    return-void
.end method

.method public afterTextStyleChanged()V
    .locals 1

    .prologue
    .line 4658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextStyleChanged:Z

    .line 4659
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V

    .line 4660
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeScrollView;->setScrollable()V

    .line 4661
    return-void
.end method

.method public appendToBody(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "withSignature"    # Z

    .prologue
    .line 4323
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v0

    .line 4324
    .local v0, "bodyText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4325
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor;->innerGetEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 4329
    :goto_0
    return-void

    .line 4327
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->setBody(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 4667
    return-void
.end method

.method public changeComposeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 6
    .param p1, "selectedAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v5, 0x1

    .line 4417
    invoke-static {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDefaultReplyFromAccount(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 4418
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4419
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4421
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    .line 4423
    .local v1, "oldSignature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getBody()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4424
    .local v0, "bodyText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4425
    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4426
    .local v2, "pos":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 4427
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 4430
    .end local v2    # "pos":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 4431
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4433
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    .line 4434
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4438
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBlank()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4439
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->enableSave(Z)V

    .line 4441
    :cond_1
    iput-boolean v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    .line 4443
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateValidator()V

    .line 4446
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->copySystemContact()V

    .line 4447
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    .line 4448
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addMailPrefsListener()V

    .line 4450
    .end local v0    # "bodyText":Ljava/lang/String;
    .end local v1    # "oldSignature":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "to"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3349
    .local p2, "wrongEmailsOut":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    if-nez v4, :cond_1

    .line 3357
    :cond_0
    return-void

    .line 3352
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 3353
    .local v1, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mValidator:Lcom/kingsoft/common/Rfc822Validator;

    invoke-virtual {v4, v1}, Lcom/kingsoft/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3354
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 2295
    :try_start_0
    invoke-static {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->replacePlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2303
    :goto_0
    return-object v1

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    sget-object v1, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "%s while decoding \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2303
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2300
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Exception  while decoding mailto address"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public enableSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 4480
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4482
    :cond_0
    return-void
.end method

.method protected finishSetup(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->setFocus(I)V

    .line 953
    invoke-static {p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->hadSavedInstanceStateMessage(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->initAttachmentsFromIntent(Landroid/content/Intent;)V

    .line 956
    :cond_0
    if-eqz p3, :cond_3

    .end local p3    # "savedInstanceState":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromSpinner(Landroid/os/Bundle;I)V

    .line 961
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 965
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateHideOrShowCcBcc()V

    .line 966
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateHideOrShowQuotedText(Z)V

    .line 968
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    const-string/jumbo v1, "respondedInline"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRespondedInline:Z

    .line 970
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRespondedInline:Z

    if-eqz v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 973
    :cond_2
    return-void

    .line 956
    .restart local p3    # "savedInstanceState":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    .line 968
    .end local p3    # "savedInstanceState":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public focusBody()V
    .locals 4

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/MailEditor;->requestFocus()Z

    .line 1027
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1029
    .local v0, "length":I
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1031
    .local v1, "signatureStartPos":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setSelection(I)V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    if-ltz v0, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/widget/text/MailEditor;->setSelection(I)V

    goto :goto_0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 5016
    return-object p0
.end method

.method public getAddressesFromList(Lcom/kingsoft/ex/chips/RecipientEditTextView;)[Ljava/lang/String;
    .locals 5
    .param p1, "list"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 3327
    if-nez p1, :cond_1

    .line 3328
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 3336
    :cond_0
    return-object v2

    .line 3330
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 3331
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v0, v3

    .line 3332
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 3333
    .local v2, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3334
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 3333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBccAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAddressesFromList(Lcom/kingsoft/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBody()Lcom/kingsoft/email/widget/text/MailEditor;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    return-object v0
.end method

.method public getCcAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAddressesFromList(Lcom/kingsoft/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    goto :goto_0
.end method

.method protected getMatchingRecipient(Lcom/kingsoft/mail/providers/Account;Ljava/util/List;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 10
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;"
        }
    .end annotation

    .prologue
    .line 1621
    .local p2, "sentTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1623
    .local v6, "matchingReplyFrom":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1624
    .local v7, "recipientsMap":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1625
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v8

    .line 1626
    .local v8, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 1627
    aget-object v9, v8, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1626
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1631
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v8    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x0

    .line 1633
    .local v5, "matchingAddressCount":I
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v1

    .line 1634
    .local v1, "customFroms":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    if-eqz v1, :cond_3

    .line 1635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 1636
    .local v2, "entry":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v9, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1637
    move-object v6, v2

    .line 1638
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1642
    .end local v2    # "entry":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :cond_3
    const/4 v9, 0x1

    if-le v5, v9, :cond_4

    .line 1643
    invoke-static {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDefaultReplyFromAccount(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v6

    .line 1645
    :cond_4
    return-object v6
.end method

.method public getReplyFromAccount(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "refMessage"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCachedSettings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Settings;->forceReplyFromDefault:Z

    if-eqz v1, :cond_0

    .line 1599
    invoke-static {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->getDefaultReplyFromAccount(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v1

    .line 1609
    :goto_0
    return-object v1

    .line 1604
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v0, "allRecipients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1607
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1609
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getMatchingRecipient(Lcom/kingsoft/mail/providers/Account;Ljava/util/List;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v1

    goto :goto_0
.end method

.method protected getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "bodyText"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3499
    const/4 v4, -0x1

    .line 3501
    .local v4, "startPos":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .line 3519
    .end local v4    # "startPos":I
    .local v5, "startPos":I
    :goto_0
    return v5

    .line 3505
    .end local v5    # "startPos":I
    .restart local v4    # "startPos":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3506
    .local v0, "bodyLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3507
    .local v3, "signatureLength":I
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3508
    .local v2, "printableVersion":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3510
    .local v1, "printableLength":I
    if-lt v0, v1, :cond_3

    sub-int v6, v0, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3513
    sub-int v4, v0, v1

    :cond_2
    :goto_1
    move v5, v4

    .line 3519
    .end local v4    # "startPos":I
    .restart local v5    # "startPos":I
    goto :goto_0

    .line 3514
    .end local v5    # "startPos":I
    .restart local v4    # "startPos":I
    :cond_3
    if-lt v0, v3, :cond_2

    sub-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3517
    sub-int v4, v0, v3

    goto :goto_1
.end method

.method public getToAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getAddressesFromList(Lcom/kingsoft/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initAttachments(Lcom/kingsoft/mail/providers/Message;)V
    .locals 1
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2388
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getRegularAttachments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachments(Ljava/util/List;)J

    .line 2389
    return-void
.end method

.method protected initExtraValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "extraValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2282
    return-void
.end method

.method public initFromExtras(Landroid/content/Intent;)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2206
    .local v2, "dataUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 2207
    const-string/jumbo v12, "mailto"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2208
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromMailTo(Ljava/lang/String;)V

    .line 2221
    :cond_0
    :goto_0
    const-string/jumbo v12, "android.intent.extra.EMAIL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2222
    .local v5, "extraStrings":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2223
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2225
    :cond_1
    const-string/jumbo v12, "android.intent.extra.CC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2226
    if-eqz v5, :cond_2

    .line 2227
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2229
    :cond_2
    const-string/jumbo v12, "android.intent.extra.BCC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2230
    if-eqz v5, :cond_3

    .line 2231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 2232
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addBccAddresses(Ljava/util/Collection;)V

    .line 2234
    :cond_3
    const-string/jumbo v12, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2235
    .local v4, "extraString":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 2236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2239
    :cond_4
    sget-object v1, Lcom/kingsoft/mail/compose/ComposeActivity;->ALL_EXTRAS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_c

    aget-object v3, v1, v7

    .line 2240
    .local v3, "extra":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2241
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2242
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v12, "to"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2243
    const-string/jumbo v12, ","

    invoke-static {v11, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2239
    .end local v11    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2210
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "extraString":Ljava/lang/String;
    .end local v5    # "extraStrings":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v12, v12, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {v12, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2211
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 2212
    .local v10, "toText":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 2213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    const-string/jumbo v12, ","

    invoke-static {v10, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 2244
    .end local v10    # "toText":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "extra":Ljava/lang/String;
    .restart local v4    # "extraString":Ljava/lang/String;
    .restart local v5    # "extraStrings":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v11    # "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v12, "cc"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2245
    const-string/jumbo v12, ","

    invoke-static {v11, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2

    .line 2247
    :cond_8
    const-string/jumbo v12, "bcc"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2248
    const-string/jumbo v12, ","

    invoke-static {v11, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addBccAddresses(Ljava/util/Collection;)V

    goto :goto_2

    .line 2249
    :cond_9
    const-string/jumbo v12, "subject"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2251
    :cond_a
    const-string/jumbo v12, "body"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2252
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->setBody(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 2253
    :cond_b
    const-string/jumbo v12, "quotedText"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2254
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->initQuotedText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 2259
    .end local v3    # "extra":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2260
    .local v6, "extras":Landroid/os/Bundle;
    if-eqz v6, :cond_d

    .line 2261
    const-string/jumbo v12, "android.intent.extra.TEXT"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2262
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_d

    .line 2263
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->setBody(Ljava/lang/CharSequence;Z)V

    .line 2269
    .end local v9    # "text":Ljava/lang/CharSequence;
    :cond_d
    const-string/jumbo v12, "extra-values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    .line 2270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    if-eqz v12, :cond_e

    .line 2271
    sget-object v12, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Launched with extra values: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mExtraValues:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->initExtraValues(Landroid/content/ContentValues;)V

    .line 2274
    const/4 v12, 0x1

    .line 2277
    :goto_3
    return v12

    :cond_e
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public initFromMailTo(Ljava/lang/String;)V
    .locals 16
    .param p1, "mailToString"    # Ljava/lang/String;

    .prologue
    .line 2328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "foo://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2329
    .local v10, "uri":Landroid/net/Uri;
    const-string/jumbo v11, "?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2330
    .local v5, "index":I
    const-string/jumbo v11, "mailto"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 2334
    .local v6, "length":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_3

    .line 2335
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2339
    .local v9, "to":Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2340
    const-string/jumbo v11, ","

    invoke-static {v9, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    .end local v9    # "to":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v11, "cc"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2353
    .local v3, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2355
    const-string/jumbo v11, "to"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2356
    .local v7, "otherTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2359
    const-string/jumbo v11, "bcc"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2360
    .local v1, "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v1, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->addBccAddresses(Ljava/util/Collection;)V

    .line 2362
    const-string/jumbo v11, "subject"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2363
    .local v8, "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 2365
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->replacePlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "UTF-8"

    invoke-static {v11, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2373
    :cond_1
    :goto_2
    const-string/jumbo v11, "body"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2374
    .local v2, "body":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 2376
    const/4 v11, 0x0

    :try_start_2
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->replacePlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/kingsoft/mail/compose/ComposeActivity;->setBody(Ljava/lang/CharSequence;Z)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2383
    :cond_2
    :goto_3
    return-void

    .line 2337
    .end local v1    # "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "body":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "otherTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->decodeEmailInUri(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .restart local v9    # "to":Ljava/lang/String;
    goto/16 :goto_0

    .line 2342
    .end local v9    # "to":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2343
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v11, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2344
    sget-object v11, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "%s while decoding \'%s\'"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 2347
    :cond_4
    sget-object v11, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Exception  while decoding mailto address"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v4, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 2367
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "otherTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 2368
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v11, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "%s while decoding subject \'%s\'"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 2378
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "body":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v4

    .line 2379
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v11, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "%s while decoding body \'%s\'"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method protected initQuotedText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "quotedText"    # Ljava/lang/CharSequence;
    .param p2, "shouldQuoteText"    # Z

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedTextFromHtml(Ljava/lang/CharSequence;Z)V

    .line 2573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 2574
    return-void
.end method

.method initRecipientsFromRefMessage(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 1
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I

    .prologue
    .line 2676
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2680
    :goto_0
    return-void

    .line 2679
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->initReplyRecipients(Lcom/kingsoft/mail/providers/Message;I)V

    goto :goto_0
.end method

.method initReplyRecipients(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 12
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2687
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v5

    .line 2689
    .local v5, "sentToAddresses":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getReplyToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v4

    .line 2691
    .local v4, "replyToAddresses":[Ljava/lang/String;
    array-length v8, v4

    if-lez v8, :cond_2

    aget-object v3, v4, v10

    .line 2693
    .local v3, "replyToAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getFromAddressesUnescaped()[Ljava/lang/String;

    move-result-object v2

    .line 2694
    .local v2, "fromAddresses":[Ljava/lang/String;
    array-length v8, v2

    if-lez v8, :cond_3

    aget-object v1, v2, v10

    .line 2698
    .local v1, "fromAddress":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2699
    move-object v3, v1

    .line 2706
    :cond_0
    if-nez p2, :cond_4

    .line 2707
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v7, v1, v3, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->initToRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 2709
    .local v6, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2725
    .end local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .end local v1    # "fromAddress":Ljava/lang/String;
    .end local v2    # "fromAddresses":[Ljava/lang/String;
    .end local v3    # "replyToAddress":Ljava/lang/String;
    :cond_2
    move-object v3, v7

    .line 2691
    goto :goto_0

    .restart local v2    # "fromAddresses":[Ljava/lang/String;
    .restart local v3    # "replyToAddress":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 2694
    goto :goto_1

    .line 2710
    .restart local v1    # "fromAddress":Ljava/lang/String;
    :cond_4
    if-ne p2, v11, :cond_1

    .line 2711
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 2712
    .local v0, "ccAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v7, v1, v3, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->initToRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 2714
    .restart local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v7, v6, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;[Ljava/lang/String;)V

    .line 2715
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-wide v8, p1, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-static {p0, v7, v6, v8, v9}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->removeSelf(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;J)V

    .line 2716
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 2717
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;[Ljava/lang/String;)V

    .line 2718
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2721
    iget-object v7, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v7, v10, v11, v10}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 2722
    invoke-direct {p0, v0, v6}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public isBlank()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3482
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    if-nez v2, :cond_2

    .line 3484
    :cond_0
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "null views in isBlank check"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3487
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBodyBlank(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public isBodyEmpty()Z
    .locals 1

    .prologue
    .line 3800
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->isTextIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubjectEmpty()Z
    .locals 1

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4383
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    invoke-virtual {v3}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->getCurrentAccount()Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 4384
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4386
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4387
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSignature:Ljava/lang/String;

    .line 4388
    .local v1, "oldSignature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getBody()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4389
    .local v0, "bodyText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4390
    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4391
    .local v2, "pos":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 4392
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 4395
    .end local v2    # "pos":I
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 4396
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->from_account_select:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4398
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    .line 4399
    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v3, p0}, Lcom/kingsoft/email/widget/text/MailEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4403
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBlank()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4404
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->enableSave(Z)V

    .line 4406
    :cond_1
    iput-boolean v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mReplyFromChanged:Z

    .line 4408
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateValidator()V

    .line 4411
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->copySystemContact()V

    .line 4412
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    .line 4413
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addMailPrefsListener()V

    .line 4415
    .end local v0    # "bodyText":Ljava/lang/String;
    .end local v1    # "oldSignature":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1150
    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    .line 1151
    invoke-virtual {p0, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAttachmentAndUpdateView(Landroid/content/Intent;)V

    .line 1152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAddingAttachment:Z

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1155
    if-eq p2, v3, :cond_2

    .line 1156
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    goto :goto_0

    .line 1160
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1162
    invoke-direct {p0, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_0

    .line 1164
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 1165
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1166
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 1168
    .local v0, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->submitItemAtPositionbyESB(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    goto :goto_1

    .line 1171
    .end local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    .line 1172
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 1173
    iput-boolean v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 1174
    invoke-direct {p0, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addPreMessageAttachment(Landroid/content/Intent;)V

    goto :goto_0

    .line 1175
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 1176
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1177
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 1179
    .restart local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->submitItemAtPositionbyESB(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    goto :goto_2

    .line 1181
    .end local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_6
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    .line 1182
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 1183
    iput-boolean v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 1184
    invoke-direct {p0, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addPreMessageAttachment(Landroid/content/Intent;)V

    goto :goto_0

    .line 1185
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 1186
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1187
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 1189
    .restart local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->submitItemAtPositionbyESB(Lcom/kingsoft/email/provider/EmailSmallBean;)V

    goto :goto_3

    .line 1191
    .end local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :cond_8
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    .line 1192
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 1193
    iput-boolean v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTextChanged:Z

    .line 1194
    invoke-direct {p0, p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->addPreMessageAttachment(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAttachmentAdded()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4637
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setUpperDividerVisible(Z)V

    .line 4639
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->focusLastAttachment()V

    .line 4641
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4642
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4644
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 4637
    goto :goto_0
.end method

.method public onAttachmentDeleted()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4622
    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    .line 4625
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setUpperDividerVisible(Z)V

    .line 4628
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4629
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4632
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateSaveUi()V

    .line 4633
    return-void

    .line 4625
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3032
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3033
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    .line 3038
    :goto_0
    return-void

    .line 3035
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->saveIfNeeded()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2914
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2916
    .local v0, "id":I
    const v2, 0x7f0c0263

    if-ne v0, v2, :cond_0

    .line 2919
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->showCcBccViews()V

    .line 2928
    :cond_0
    const v2, 0x7f0c0124

    if-ne v0, v2, :cond_2

    .line 2929
    const-string/jumbo v2, "*/*"

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->doAttach(Ljava/lang/String;)V

    .line 2964
    :cond_1
    :goto_0
    return-void

    .line 2930
    :cond_2
    const v2, 0x7f0c015a

    if-ne v0, v2, :cond_3

    .line 2931
    const-string/jumbo v2, "A06"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 2932
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/compose/ContactListActivity;->mAccount:Landroid/accounts/Account;

    .line 2933
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2934
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "to"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2935
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2936
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_to:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2938
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2939
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const v2, 0x7f0c00f4

    if-ne v0, v2, :cond_4

    .line 2940
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/compose/ContactListActivity;->mAccount:Landroid/accounts/Account;

    .line 2941
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2942
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "cc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2943
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2944
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_cc:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2946
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2947
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const v2, 0x7f0c00f9

    if-ne v0, v2, :cond_5

    .line 2948
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/compose/ContactListActivity;->mAccount:Landroid/accounts/Account;

    .line 2949
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2950
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "bcc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2952
    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->allcheckedlist_bcc:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2954
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2955
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const v2, 0x7f0c0125

    if-ne v0, v2, :cond_6

    .line 2956
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->hideInputMethod()V

    .line 2957
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->onAppUpPressed()V

    goto/16 :goto_0

    .line 2958
    :cond_6
    const v2, 0x7f0c0126

    if-ne v0, v2, :cond_1

    .line 2959
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->hideInputMethod()V

    .line 2960
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->doSend()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 628
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setContentView(I)V

    .line 629
    if-eqz p1, :cond_0

    const-string/jumbo v0, "compose_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    .line 631
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->checkValidAccounts()V

    .line 633
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4826
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 4844
    :goto_0
    return-object v0

    .line 4828
    :pswitch_0
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/AttachmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 4830
    :pswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4833
    :pswitch_2
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4836
    :pswitch_3
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4839
    :pswitch_4
    const-string/jumbo v0, "original-draft-message-uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4841
    .local v2, "originMessageUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4826
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1142
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onDestroy()V

    .line 1143
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRegisterListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mMailPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1799
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 1800
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->focusBody()V

    .line 1801
    const/4 v0, 0x1

    .line 1803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mEditManager:Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/compose/mailEditor/MailEditorManager;->onFocusChange(Landroid/view/View;Z)V

    .line 2977
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2978
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2988
    :cond_0
    :goto_0
    return-void

    .line 2980
    :pswitch_0
    if-eqz p2, :cond_1

    .line 2981
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2983
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    const v1, 0x7f100100

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setHint(I)V

    goto :goto_0

    .line 2978
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c012f
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 22
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4849
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v9

    .line 4850
    .local v9, "id":I
    packed-switch v9, :pswitch_data_0

    .line 4981
    .end local p2    # "data":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 4852
    .restart local p2    # "data":Landroid/database/Cursor;
    :pswitch_0
    check-cast p2, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .end local p2    # "data":Landroid/database/Cursor;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .line 4854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_0

    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_0

    .line 4859
    const/4 v8, -0x1

    .line 4860
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->moveToPosition(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->get()Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v12

    .line 4862
    .local v12, "mAttachment":Lcom/kingsoft/mail/providers/Attachment;
    new-instance v7, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 4864
    .local v7, "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 4865
    invoke-virtual {v7, v12}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/kingsoft/mail/providers/Attachment;)V

    .line 4866
    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->updateStatus()V

    goto :goto_1

    .line 4871
    .end local v7    # "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .end local v8    # "i":I
    .end local v12    # "mAttachment":Lcom/kingsoft/mail/providers/Attachment;
    .restart local p2    # "data":Landroid/database/Cursor;
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 4872
    new-instance v17, Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    .line 4873
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 4874
    .local v11, "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 4875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromRefMessage(I)V

    .line 4876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSetup(ILandroid/content/Intent;Landroid/os/Bundle;)V

    .line 4877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 4878
    const-string/jumbo v17, "to"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4879
    .local v16, "to":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 4880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/mail/providers/Message;->setTo(Ljava/lang/String;)V

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/mail/providers/Message;->setFrom(Ljava/lang/String;)V

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 4885
    .end local v16    # "to":Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 4886
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    goto/16 :goto_0

    .line 4888
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 4893
    :pswitch_2
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4894
    new-instance v17, Lcom/kingsoft/mail/providers/Message;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    .line 4896
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSetup(ILandroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4899
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4902
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4903
    .local v5, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4905
    .local v10, "initializedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    :cond_4
    new-instance v4, Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 4906
    .local v4, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->isAccountReady()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 4907
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4909
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4910
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 4911
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 4912
    const v17, 0x7f0c023f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 4913
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 4914
    const v17, 0x7f0c011f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 4915
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 4918
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishCreate()V

    goto/16 :goto_0

    .line 4921
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v4, v17

    .line 4922
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->showWaitFragment(Lcom/kingsoft/mail/providers/Account;)V

    goto/16 :goto_0

    .line 4921
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 4927
    .end local v4    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v5    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    .end local v10    # "initializedAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Account;>;"
    :pswitch_4
    const/4 v13, 0x0

    .line 4928
    .local v13, "message":Lcom/kingsoft/mail/providers/Message;
    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 4929
    new-instance v13, Lcom/kingsoft/mail/providers/Message;

    .end local v13    # "message":Lcom/kingsoft/mail/providers/Message;
    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    .line 4932
    .restart local v13    # "message":Lcom/kingsoft/mail/providers/Message;
    :cond_8
    if-eqz v13, :cond_0

    .line 4937
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 4938
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/kingsoft/mail/compose/ComposeActivity;->initFromDraftMessage(Lcom/kingsoft/mail/providers/Message;)V

    .line 4939
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 4941
    invoke-virtual {v13}, Lcom/kingsoft/mail/providers/Message;->getBcc()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    const/4 v14, 0x1

    .line 4942
    .local v14, "showBcc":Z
    :goto_3
    if-nez v14, :cond_9

    invoke-virtual {v13}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_9
    const/4 v15, 0x1

    .line 4943
    .local v15, "showCc":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15, v14}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 4945
    iget v0, v13, Lcom/kingsoft/mail/providers/Message;->draftType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 4957
    const/4 v6, -0x1

    .line 4960
    .local v6, "action":I
    :goto_5
    sget-object v17, Lcom/kingsoft/mail/compose/ComposeActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v18, "Previous draft had action type: %d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4962
    iget-boolean v0, v13, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mShowQuotedText:Z

    .line 4963
    iget-object v0, v13, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 4970
    iget-object v0, v13, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessageUri:Landroid/net/Uri;

    .line 4971
    move-object/from16 v0, p0

    iput v6, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 4972
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 4941
    .end local v6    # "action":I
    .end local v14    # "showBcc":Z
    .end local v15    # "showCc":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_3

    .line 4942
    .restart local v14    # "showBcc":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 4947
    .restart local v15    # "showCc":Z
    :pswitch_5
    const/4 v6, 0x0

    .line 4948
    .restart local v6    # "action":I
    goto :goto_5

    .line 4950
    .end local v6    # "action":I
    :pswitch_6
    const/4 v6, 0x1

    .line 4951
    .restart local v6    # "action":I
    goto :goto_5

    .line 4953
    .end local v6    # "action":I
    :pswitch_7
    const/4 v6, 0x2

    .line 4954
    .restart local v6    # "action":I
    goto :goto_5

    .line 4977
    :cond_c
    move-object/from16 v0, p0

    iput v6, v0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 4978
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->finishSetup(ILandroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 4945
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5011
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsCursor:Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .line 5012
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4215
    iget v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 4216
    .local v0, "initialComposeMode":I
    if-nez p1, :cond_6

    .line 4217
    iput v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    .line 4223
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 4224
    iget v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    if-eq v0, v5, :cond_5

    .line 4225
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->resetMessageForModeChange()V

    .line 4226
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v5, :cond_1

    .line 4227
    iget v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->setFieldsFromRefMessage(I)V

    .line 4229
    :cond_1
    const/4 v2, 0x0

    .line 4230
    .local v2, "showCc":Z
    const/4 v1, 0x0

    .line 4231
    .local v1, "showBcc":Z
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    if-eqz v5, :cond_3

    .line 4234
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Message;->getBcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move v1, v4

    .line 4238
    :goto_1
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    iget v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    if-ne v5, v4, :cond_9

    :cond_2
    move v2, v4

    .line 4241
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    if-eqz v5, :cond_4

    .line 4242
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move v2, v4

    .line 4243
    :goto_3
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    move v1, v4

    .line 4245
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;

    invoke-virtual {v5, v3, v2, v1}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    .line 4247
    .end local v1    # "showBcc":Z
    .end local v2    # "showCc":Z
    :cond_5
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateHideOrShowCcBcc()V

    .line 4248
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 4249
    return v4

    .line 4218
    :cond_6
    if-ne p1, v4, :cond_7

    .line 4219
    iput v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    goto :goto_0

    .line 4220
    :cond_7
    if-ne p1, v5, :cond_0

    .line 4221
    iput v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    goto :goto_0

    .restart local v1    # "showBcc":Z
    .restart local v2    # "showCc":Z
    :cond_8
    move v1, v3

    .line 4234
    goto :goto_1

    :cond_9
    move v2, v3

    .line 4238
    goto :goto_2

    :cond_a
    move v2, v3

    .line 4242
    goto :goto_3

    :cond_b
    move v1, v3

    .line 4243
    goto :goto_4
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1116
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 1117
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 1121
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedSendOrDiscard:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->logSendOrSave(Z)V

    .line 1132
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isFeedbackAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1133
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    .line 1135
    :cond_1
    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mResumeOrPause:Z

    .line 1136
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->stopSaveDraftTimer()V

    .line 1137
    return-void
.end method

.method public onRespondInline(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4306
    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->appendToBody(Ljava/lang/CharSequence;Z)V

    .line 4307
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mQuotedTextView:Lcom/kingsoft/mail/compose/QuotedTextView;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->setUpperDividerVisible(Z)V

    .line 4308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRespondedInline:Z

    .line 4309
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4310
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/MailEditor;->requestFocus()Z

    .line 4312
    :cond_0
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1209
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v8, v8

    if-lez v8, :cond_3

    const/4 v3, 0x1

    .line 1210
    .local v3, "hasAccounts":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1213
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1214
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    .line 1215
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    const-string/jumbo v9, "focusSelectionStart"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1216
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    const-string/jumbo v9, "focusSelectionStart"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1218
    .local v6, "selectionStart":I
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInnerSavedState:Landroid/os/Bundle;

    const-string/jumbo v9, "focusSelectionEnd"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1222
    .local v5, "selectionEnd":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1223
    .local v2, "focusEditText":Landroid/widget/EditText;
    if-eqz v2, :cond_1

    .line 1224
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1225
    .local v4, "length":I
    if-ge v6, v4, :cond_1

    if-ge v5, v4, :cond_1

    .line 1226
    invoke-virtual {v2, v6, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 1231
    .end local v2    # "focusEditText":Landroid/widget/EditText;
    .end local v4    # "length":I
    .end local v5    # "selectionEnd":I
    .end local v6    # "selectionStart":I
    :cond_1
    if-eqz v3, :cond_2

    .line 1232
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 1234
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getToAddresses()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1235
    .local v7, "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getCcAddresses()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1236
    .local v1, "ccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getBccAddresses()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1237
    .local v0, "bccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v8, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->addToAddresses(Ljava/util/Collection;)V

    .line 1241
    invoke-direct {p0, v1, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1242
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->addBccAddresses(Ljava/util/Collection;)V

    .line 1244
    .end local v0    # "bccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "ccAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "toAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 1209
    .end local v3    # "hasAccounts":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 1058
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 1059
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 1060
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->setShowAttachment(Z)V

    .line 1063
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 1064
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 1065
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    iget v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mComposeMode:I

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->initialize(ILcom/kingsoft/mail/providers/Account;[Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)V

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mResumeOrPause:Z

    .line 1070
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftHasHandle:Z

    .line 1071
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1248
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1250
    .local v0, "inner":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->saveState(Landroid/os/Bundle;)V

    .line 1251
    const-string/jumbo v1, "compose_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1252
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1042
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStart()V

    .line 1044
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/analytics/Tracker;->activityStart(Landroid/app/Activity;)V

    .line 1045
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1049
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onStop()V

    .line 1051
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/analytics/Tracker;->activityStop(Landroid/app/Activity;)V

    .line 1053
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 1054
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 4672
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1075
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onWindowFocusChanged(Z)V

    .line 1077
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->pendingAddRecipients:Z

    if-eqz v0, :cond_5

    .line 1084
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->clearChangeListeners()V

    .line 1085
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListTo:Ljava/util/List;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 1087
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListCc:Ljava/util/List;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 1091
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressesToList(Ljava/util/Collection;Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    .line 1095
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1097
    :cond_4
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->discardChanges()V

    .line 1098
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->initChangeListeners()V

    .line 1099
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->pendingAddRecipients:Z

    .line 1102
    :cond_5
    iput-boolean p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mWindowFocused:Z

    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    if-eqz v0, :cond_6

    .line 1105
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mFromSpinner:Lcom/kingsoft/mail/compose/FromAddressSpinner;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/FromAddressSpinner;->setBackgroundResource(I)V

    .line 1107
    :cond_6
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z

    if-eqz v0, :cond_0

    .line 1108
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V

    .line 1109
    iput-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z

    goto :goto_0
.end method

.method protected resetMessageForModeChange()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 4261
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mTo:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4262
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4263
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4265
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSubject:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4271
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsChanged:Z

    if-nez v0, :cond_0

    .line 4272
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->deleteAllAttachments()V

    .line 4274
    :cond_0
    return-void
.end method

.method public runCallBack(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 5023
    packed-switch p1, :pswitch_data_0

    .line 5034
    :pswitch_0
    return-void

    .line 5023
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected sendOrSaveWithSanityChecks(ZZZZ)Z
    .locals 13
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z
    .param p3, "orientationChanged"    # Z
    .param p4, "autoSend"    # Z

    .prologue
    .line 3569
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v9, :cond_2

    .line 3570
    :cond_0
    sget-object v9, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "ComposeActivity send or save with sanity checks account is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3571
    const v9, 0x7f100370

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 3573
    if-eqz p4, :cond_1

    .line 3574
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->finish()V

    .line 3576
    :cond_1
    const/4 v9, 0x0

    .line 3651
    :goto_0
    return v9

    .line 3580
    :cond_2
    if-eqz p3, :cond_3

    .line 3581
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/String;

    .local v0, "bcc":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "cc":[Ljava/lang/String;
    move-object v5, v0

    .line 3590
    .local v5, "to":[Ljava/lang/String;
    :goto_1
    if-nez p1, :cond_4

    array-length v9, v5

    if-nez v9, :cond_4

    array-length v9, v1

    if-nez v9, :cond_4

    array-length v9, v0

    if-nez v9, :cond_4

    .line 3591
    const v9, 0x7f100333

    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f100334

    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/kingsoft/mail/compose/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3592
    const/4 v9, 0x0

    goto :goto_0

    .line 3583
    .end local v0    # "bcc":[Ljava/lang/String;
    .end local v1    # "cc":[Ljava/lang/String;
    .end local v5    # "to":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    .line 3584
    .restart local v5    # "to":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getCcAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 3585
    .restart local v1    # "cc":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "bcc":[Ljava/lang/String;
    goto :goto_1

    .line 3595
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3596
    .local v8, "wrongEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_5

    .line 3597
    invoke-virtual {p0, v5, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 3598
    invoke-virtual {p0, v1, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 3599
    invoke-virtual {p0, v0, v8}, Lcom/kingsoft/mail/compose/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 3603
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 3604
    const v9, 0x7f100208

    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3606
    .local v3, "errorText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100209

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3607
    .local v4, "errorTitleText":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-direct {p0, v3, v4, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3608
    const/4 v9, 0x0

    goto :goto_0

    .line 3612
    .end local v3    # "errorText":Ljava/lang/String;
    .end local v4    # "errorTitleText":Ljava/lang/String;
    :cond_6
    if-nez p1, :cond_c

    .line 3615
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isSubjectEmpty()Z

    move-result v7

    .line 3616
    .local v7, "warnAboutEmptySubject":Z
    iget-object v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v9}, Lcom/kingsoft/email/widget/text/MailEditor;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-nez v9, :cond_8

    const/4 v2, 0x1

    .line 3622
    .local v2, "emptyBody":Z
    :goto_2
    if-eqz v2, :cond_9

    iget-boolean v9, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mForward:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBodyEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    const/4 v6, 0x1

    .line 3628
    .local v6, "warnAboutEmptyBody":Z
    :goto_3
    if-eqz v7, :cond_a

    .line 3629
    const v9, 0x7f100136

    invoke-direct {p0, v9, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSendConfirmDialog(IZZ)V

    .line 3632
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3616
    .end local v2    # "emptyBody":Z
    .end local v6    # "warnAboutEmptyBody":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 3622
    .restart local v2    # "emptyBody":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 3635
    .restart local v6    # "warnAboutEmptyBody":Z
    :cond_a
    if-eqz v6, :cond_b

    .line 3636
    const v9, 0x7f100135

    invoke-direct {p0, v9, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSendConfirmDialog(IZZ)V

    .line 3639
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3643
    :cond_b
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSendConfirmation()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3644
    const v9, 0x7f100137

    invoke-direct {p0, v9, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->showSendConfirmDialog(IZZ)V

    .line 3646
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3650
    .end local v2    # "emptyBody":Z
    .end local v6    # "warnAboutEmptyBody":Z
    .end local v7    # "warnAboutEmptySubject":Z
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V

    .line 3651
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method setAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 6
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1448
    if-nez p1, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->isVirtualAccount()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1453
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v4, v4

    if-lt v4, v5, :cond_0

    .line 1456
    iput-boolean v5, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->hebingflag:Z

    .line 1457
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccounts:[Lcom/kingsoft/mail/providers/Account;

    .local v1, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1458
    .local v0, "a":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->isVirtualAccount()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1459
    move-object p1, v0

    .line 1465
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v4}, Lcom/kingsoft/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1466
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 1467
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iput-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mCachedSettings:Lcom/kingsoft/mail/providers/Settings;

    .line 1468
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->appendSignature()V

    .line 1470
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_0

    .line 1471
    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/ui/MailActivity;->setNfcMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    .restart local v0    # "a":Lcom/kingsoft/mail/providers/Account;
    .restart local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setBody(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "withSignature"    # Z

    .prologue
    .line 4339
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/MailEditor;->setHtml(Ljava/lang/String;)V

    .line 4340
    if-eqz p2, :cond_0

    .line 4341
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->appendSignature()V

    .line 4343
    :cond_0
    return-void
.end method

.method public setShowAttachment(Z)V
    .locals 0
    .param p1, "isShowAttachment"    # Z

    .prologue
    .line 5058
    iput-boolean p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->isShowAttachment:Z

    .line 5059
    return-void
.end method

.method protected showEmptyTextWarnings()Z
    .locals 1

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mAttachmentsView:Lcom/kingsoft/mail/compose/AttachmentsView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showSendConfirmation()Z
    .locals 1

    .prologue
    .line 3670
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v0

    return v0
.end method

.method public updateSaveUi()V
    .locals 2

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3456
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity;->mSave:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity;->isBlank()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3458
    :cond_0
    return-void

    .line 3456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
