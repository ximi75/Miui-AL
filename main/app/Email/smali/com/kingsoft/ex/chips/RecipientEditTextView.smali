.class public Lcom/kingsoft/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;,
        Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;,
        Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;,
        Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;,
        Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientTextWatcher;
    }
.end annotation


# static fields
.field static final CHIP_LIMIT:I = 0x2

.field public static final COMMIT_CHAR_COMMA:C = ','

.field private static final COMMIT_CHAR_SEMICOLON:C = ';'

.field private static final COMMIT_CHAR_SPACE:C = ' '

.field private static DISMISS:I = 0x0

.field private static final DISMISS_DELAY:J = 0x12cL

.field private static final MAX_CHIPS_PARSED:I = 0x32

.field private static final PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RecipientEditTextView"

.field private static sExcessTopPadding:I

.field private static sSelectedTextColor:I


# instance fields
.field private mActionBarHeight:I

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mAttachedToWindow:Z

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Lmiui/app/AlertDialog;

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

.field private mLineSpacingExtra:F

.field private mMaxLines:I

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChips:Z

.field final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

.field private mShouldShrink:Z

.field mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->DISMISS:I

    .line 147
    sput v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 227
    const-string/jumbo v0, "(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 265
    sput v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    iput-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 185
    iput v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 187
    iput-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 223
    iput-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 233
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$1;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$2;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$3;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 274
    sget v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 277
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 278
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 279
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$4;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 292
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 293
    invoke-virtual {p0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    invoke-virtual {p0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 295
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$5;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 306
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 308
    invoke-virtual {p0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Landroid/text/TextWatcher;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAlternatesAdapter(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/ex/chips/RecipientEditTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    return v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$1602(Lcom/kingsoft/ex/chips/RecipientEditTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1700(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->unselectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$2100(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$2800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;
    .param p1, "x1"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$700(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/RecipientEditTextView;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x1

    .line 1513
    iget-boolean v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return v1

    .line 1516
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    const-class v3, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1518
    .local v0, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1519
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calculateAvailableWidth()F
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 772
    .local v0, "actualLine":I
    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private checkChipWidths()V
    .locals 8

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 899
    .local v3, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_1

    .line 901
    move-object v0, v3

    .local v0, "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 902
    .local v2, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 903
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 905
    invoke-interface {v2}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 901
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 1

    .prologue
    .line 2594
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSelectedChip()V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->unselectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1642
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1643
    return-void
.end method

.method private commitByCharacter()V
    .locals 4

    .prologue
    .line 1246
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1250
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1251
    .local v1, "end":I
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1252
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    invoke-direct {p0, v2, v1, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 1424
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1432
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v8, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1433
    .local v5, "tokenEnd":I
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    if-le v8, v9, :cond_1

    .line 1434
    add-int/lit8 v8, v5, 0x1

    invoke-interface {p3, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 1435
    .local v1, "charAt":C
    const/16 v8, 0x2c

    if-eq v1, v8, :cond_0

    const/16 v8, 0x3b

    if-ne v1, v8, :cond_1

    .line 1436
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 1439
    .end local v1    # "charAt":C
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1441
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const-string/jumbo v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1442
    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1443
    .local v3, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-direct {p0, p3, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isExistRecipientEnterKey(Landroid/text/Editable;Lcom/kingsoft/ex/chips/RecipientEntry;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1444
    const-string/jumbo v7, ""

    invoke-interface {p3, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1445
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V

    .line 1446
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1468
    .end local v3    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :goto_0
    return v6

    .line 1450
    .restart local v3    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_2
    if-eqz v3, :cond_3

    .line 1451
    const-string/jumbo v8, ""

    invoke-static {p3, p1, p2, v8}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1452
    invoke-direct {p0, v3, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1453
    .local v2, "chipText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    if-le p1, v10, :cond_3

    if-le p2, v10, :cond_3

    .line 1454
    invoke-interface {p3, p1, p2, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1461
    .end local v2    # "chipText":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v7

    if-ne p2, v7, :cond_4

    .line 1462
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1464
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0

    .end local v3    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_5
    move v6, v7

    .line 1468
    goto :goto_0
.end method

.method private commitDefault()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1223
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v5, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v4

    .line 1226
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1227
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1228
    .local v1, "end":I
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1230
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1231
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1234
    .local v3, "whatEnd":I
    invoke-virtual {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v3

    .line 1235
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1236
    invoke-direct {p0, v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handleEdit(II)V

    .line 1237
    const/4 v4, 0x1

    goto :goto_0

    .line 1239
    :cond_2
    invoke-direct {p0, v2, v1, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v4

    goto :goto_0
.end method

.method private constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 11
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z
    .param p3, "leaveIconSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 735
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 736
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 741
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 742
    .local v1, "defaultSize":F
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 745
    .local v0, "defaultColor":I
    if-eqz p2, :cond_1

    .line 746
    invoke-direct {p0, p1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createSelectedChip(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 753
    .local v6, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 754
    .local v5, "result":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    const/high16 v8, 0x41000000

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v2, v7

    .line 755
    .local v2, "height":I
    const/4 v7, 0x0

    rsub-int/lit8 v8, v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 756
    new-instance v4, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;

    invoke-direct {v4, v5, p1}, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 758
    .local v4, "recipientChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 759
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 760
    return-object v4

    .line 749
    .end local v2    # "height":I
    .end local v4    # "recipientChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v5    # "result":Landroid/graphics/drawable/Drawable;
    .end local v6    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v3, p3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createUnselectedChip(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "tmpBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createAlternatesAdapter(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 8
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1747
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    return-object v0
.end method

.method private createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "pressed"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1892
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1893
    .local v2, "displayText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 1912
    :cond_0
    :goto_0
    return-object v1

    .line 1896
    :cond_1
    const/4 v1, 0x0

    .line 1898
    .local v1, "chipText":Landroid/text/SpannableString;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1899
    .local v4, "textLength":I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "chipText":Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1900
    .restart local v1    # "chipText":Landroid/text/SpannableString;
    iget-boolean v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v6, :cond_0

    .line 1902
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1904
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v6, 0x0

    const/16 v7, 0x21

    invoke-virtual {v1, v0, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1906
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1907
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v3

    .line 1908
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "RecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v5

    .line 1909
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;
    .locals 13
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 2182
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, "moreText":Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 2184
    .local v6, "morePaint":Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2185
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2186
    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v12, v3, v4

    .line 2188
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLineHeight()I

    move-result v9

    .line 2189
    .local v9, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2190
    .local v8, "drawable":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2191
    .local v0, "canvas":Landroid/graphics/Canvas;
    move v7, v9

    .line 2192
    .local v7, "adjustedHeight":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 2193
    .local v10, "layout":Landroid/text/Layout;
    if-eqz v10, :cond_0

    .line 2194
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 2196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2198
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2199
    .local v11, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v2, v2, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2200
    new-instance v2, Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v11}, Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createSelectedChip(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v11, 0x0

    .line 573
    iget v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v4, v8

    .line 574
    .local v4, "height":I
    move v2, v4

    .line 575
    .local v2, "deleteWidth":I
    const/4 v8, 0x1

    new-array v7, v8, [F

    .line 576
    .local v7, "widths":[F
    const-string/jumbo v8, " "

    invoke-virtual {p2, v8, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 577
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->calculateAvailableWidth()F

    move-result v9

    int-to-float v10, v2

    sub-float/2addr v9, v10

    aget v10, v7, v11

    sub-float/2addr v9, v10

    invoke-direct {p0, v8, p2, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 582
    .local v3, "ellipsizedText":Ljava/lang/CharSequence;
    mul-int/lit8 v8, v2, 0x2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {p2, v3, v11, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    iget v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    add-int/2addr v9, v10

    mul-int/lit8 v10, v2, 0x2

    div-int/lit8 v10, v10, 0x3

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 587
    .local v6, "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 588
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 589
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 590
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v11, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 591
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 592
    sget v8, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 594
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTextYOffset(Landroid/graphics/Rect;Landroid/text/TextPaint;)F

    move-result v10

    invoke-virtual {v1, v8, v9, v10, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 598
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 599
    .local v0, "backgroundPadding":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 600
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v2, 0x2

    div-int/lit8 v9, v9, 0x3

    sub-int v9, v6, v9

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, 0x0

    add-int/lit8 v10, v10, 0x14

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int v11, v6, v11

    add-int/lit8 v11, v11, -0x5

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v4, v12

    add-int/lit8 v12, v12, -0x14

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 604
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 608
    .end local v0    # "backgroundPadding":Landroid/graphics/Rect;
    :goto_0
    return-object v5

    .line 606
    :cond_0
    const-string/jumbo v8, "RecipientEditTextView"

    const-string/jumbo v9, "Unable to draw a background for the chips as it was never set"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private createSingleAddressAdapter(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1752
    new-instance v0, Lcom/kingsoft/ex/chips/SingleRecipientArrayAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/ex/chips/SingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/kingsoft/ex/chips/RecipientEntry;)V

    return-object v0
.end method

.method private createUnselectedChip(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/text/TextPaint;Z)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "leaveBlankIconSpacer"    # Z

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v13, v0

    .line 639
    .local v13, "height":I
    move v14, v13

    .line 640
    .local v14, "iconWidth":I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 641
    .local v21, "widths":[F
    const-string/jumbo v22, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 642
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->calculateAvailableWidth()F

    move-result v23

    int-to-float v0, v14

    move/from16 v24, v0

    sub-float v23, v23, v24

    const/16 v24, 0x0

    aget v24, v21, v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v12

    .line 646
    .local v12, "ellipsizedText":Ljava/lang/CharSequence;
    mul-int/lit8 v22, v14, 0x1

    const/16 v23, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 651
    .local v20, "width":I
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 652
    .local v19, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 653
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipBackground(Lcom/kingsoft/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 654
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_8

    .line 655
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v8

    .line 660
    .local v8, "contactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v22

    if-eqz v22, :cond_3

    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_2

    const/4 v10, 0x1

    .line 665
    .local v10, "drawPhotos":Z
    :goto_0
    if-eqz v10, :cond_6

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v17

    .line 669
    .local v17, "photoBytes":[B
    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v22

    check-cast v22, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v17

    .line 677
    :cond_0
    if-eqz v17, :cond_5

    .line 678
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 686
    .local v16, "photo":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v16, :cond_1

    .line 687
    new-instance v18, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 688
    .local v18, "src":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 689
    .local v6, "backgroundPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 690
    new-instance v11, Landroid/graphics/RectF;

    sub-int v22, v20, v14

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x0

    add-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v20, v24

    add-int/lit8 v24, v24, -0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v25, v13, v25

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 694
    .local v11, "dst":Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 695
    .local v15, "matrix":Landroid/graphics/Matrix;
    sget-object v22, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v11, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 701
    .end local v6    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v11    # "dst":Landroid/graphics/RectF;
    .end local v15    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "photo":Landroid/graphics/Bitmap;
    .end local v17    # "photoBytes":[B
    .end local v18    # "src":Landroid/graphics/RectF;
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x106000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 703
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTextYOffset(Landroid/graphics/Rect;Landroid/text/TextPaint;)F

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, p2

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 708
    .end local v8    # "contactId":J
    .end local v10    # "drawPhotos":Z
    :goto_3
    return-object v19

    .line 660
    .restart local v8    # "contactId":J
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_4

    const-wide/16 v22, -0x2

    cmp-long v22, v8, v22

    if-eqz v22, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 681
    .restart local v10    # "drawPhotos":Z
    .restart local v17    # "photoBytes":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    .restart local v16    # "photo":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 698
    .end local v16    # "photo":Landroid/graphics/Bitmap;
    .end local v17    # "photoBytes":[B
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 699
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 706
    .end local v8    # "contactId":J
    .end local v10    # "drawPhotos":Z
    :cond_8
    const-string/jumbo v22, "RecipientEditTextView"

    const-string/jumbo v23, "Unable to draw a background for the chips as it was never set"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method private createValidatedEntry(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 6
    .param p1, "item"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 2080
    if-nez p1, :cond_0

    .line 2081
    const/4 v1, 0x0

    .line 2099
    :goto_0
    return-object v1

    .line 2087
    :cond_0
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2088
    .local v0, "destination":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2089
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->isValid()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    .local v1, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2091
    .end local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2095
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->isValid()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    .restart local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    goto :goto_0

    .line 2097
    .end local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_3
    move-object v1, p1

    .restart local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    goto :goto_0
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "maxWidth"    # F

    .prologue
    .line 561
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 562
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string/jumbo v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 565
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1818
    .local v1, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1819
    aget-object v0, v1, v3

    .line 1820
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    .line 1821
    .local v4, "start":I
    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 1822
    .local v2, "end":I
    if-lt p1, v4, :cond_0

    if-gt p1, v2, :cond_0

    .line 1826
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    :goto_1
    return-object v0

    .line 1818
    .restart local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "end":I
    .restart local v4    # "start":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1826
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "end":I
    .end local v4    # "start":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findText(Landroid/text/Editable;I)I
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "offset"    # I

    .prologue
    .line 1808
    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1811
    .end local p1    # "offset":I
    :goto_0
    return p1

    .restart local p1    # "offset":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private fixText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "cs"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1351
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v5, ""

    .line 1386
    :cond_0
    return-object v5

    .line 1353
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 1354
    .local v7, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v7

    if-ge v3, v9, :cond_0

    .line 1357
    aget-object v9, v7, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, "text":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1356
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1362
    :cond_3
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1363
    .local v4, "index":I
    if-gez v4, :cond_5

    .line 1365
    aget-object v9, v7, v3

    invoke-direct {p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    .line 1381
    :cond_4
    :goto_2
    aget-object v9, v7, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    add-int/lit8 v9, v3, 0x1

    array-length v10, v7

    if-ge v9, v10, :cond_2

    .line 1383
    const-string/jumbo v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1368
    :cond_5
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, "fix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1374
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v1, 0x1

    .line 1376
    .local v1, "emptyDomain":Z
    :goto_3
    if-nez v1, :cond_4

    .line 1377
    aget-object v9, v7, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "emptyDomain":Z
    :cond_6
    move v1, v8

    .line 1375
    goto :goto_3
.end method

.method private focusNext()Z
    .locals 2

    .prologue
    .line 1206
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1207
    .local v0, "next":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1209
    const/4 v1, 0x1

    .line 1211
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getExcessTopPadding()I
    .locals 2

    .prologue
    .line 450
    sget v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 451
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    .line 453
    :cond_0
    sget v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sExcessTopPadding:I

    return v0
.end method

.method private static getTextYOffset(Landroid/graphics/Rect;Landroid/text/TextPaint;)F
    .locals 5
    .param p0, "targetRect"    # Landroid/graphics/Rect;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 721
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v2, v3

    .line 724
    .local v0, "baseline":I
    int-to-float v2, v0

    return v2
.end method

.method private handleEdit(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 1525
    if-eq p1, v6, :cond_0

    if-ne p2, v6, :cond_1

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1545
    :goto_0
    return-void

    .line 1532
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1533
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1534
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1536
    invoke-direct {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1537
    .local v2, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    const-string/jumbo v5, ""

    invoke-static {v1, p1, p2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1538
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1539
    .local v0, "chipText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    .line 1540
    .local v3, "selEnd":I
    if-eqz v0, :cond_2

    if-le p1, v6, :cond_2

    if-le v3, v6, :cond_2

    .line 1541
    invoke-interface {v1, p1, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1544
    .end local v0    # "chipText":Ljava/lang/CharSequence;
    .end local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    .end local v3    # "selEnd":I
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 2770
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 2771
    .local v0, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2773
    new-instance v1, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V

    .line 2774
    .local v1, "replace":Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2776
    .end local v1    # "replace":Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 7
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 2736
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2738
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2739
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2740
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2741
    .local v3, "paste":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 2742
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v4

    .line 2743
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 2744
    .local v1, "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2745
    .local v0, "editable":Landroid/text/Editable;
    if-ltz v4, :cond_1

    if-ltz v1, :cond_1

    if-eq v4, v1, :cond_1

    .line 2746
    invoke-interface {v0, v3, v4, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2750
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handlePasteAndReplace()V

    .line 2739
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v4    # "start":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2748
    .restart local v0    # "editable":Landroid/text/Editable;
    .restart local v1    # "end":I
    .restart local v4    # "start":I
    :cond_1
    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 2755
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "paste":Ljava/lang/CharSequence;
    .end local v4    # "start":I
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2756
    return-void
.end method

.method private isExistRecipient(Landroid/text/Editable;Lcom/kingsoft/ex/chips/RecipientEntry;)Z
    .locals 9
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    const/4 v6, 0x0

    .line 1963
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1964
    .local v2, "contacts":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return v6

    .line 1968
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 1969
    .local v1, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 1973
    move-object v0, v1

    .local v0, "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 1975
    .local v3, "curChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz p2, :cond_2

    invoke-interface {v3}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1978
    const/4 v6, 0x1

    goto :goto_0

    .line 1973
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isExistRecipientEnterKey(Landroid/text/Editable;Lcom/kingsoft/ex/chips/RecipientEntry;)Z
    .locals 7
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    const/4 v4, 0x0

    .line 1986
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1987
    .local v2, "contacts":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2006
    :cond_0
    :goto_0
    return v4

    .line 1991
    :cond_1
    invoke-static {v2}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1993
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1997
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1998
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 1999
    .local v0, "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2002
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isInDelete(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z
    .locals 1
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2508
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1070
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const/4 v1, 0x0

    .line 1075
    :goto_0
    return v1

    .line 1074
    :cond_0
    sget-object v1, Lcom/kingsoft/ex/chips/RecipientEditTextView;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1075
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private loseFocusCommitByChar()V
    .locals 4

    .prologue
    .line 1260
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_0

    .line 1270
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1264
    .local v0, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1265
    .local v1, "end":I
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1266
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->loseFocusdshouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1267
    invoke-direct {p0, v2, v1, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->loseFocusCommitChip(IILandroid/text/Editable;)Z

    .line 1269
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private loseFocusCommitChip(IILandroid/text/Editable;)Z
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1273
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1274
    .local v4, "tokenEnd":I
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    if-le v7, v8, :cond_1

    .line 1275
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p3, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1276
    .local v0, "charAt":C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_0

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_1

    .line 1277
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1280
    .end local v0    # "charAt":C
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1281
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1282
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1283
    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->loseFocusCreateTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1284
    .local v2, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-direct {p0, p3, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isExistRecipientEnterKey(Landroid/text/Editable;Lcom/kingsoft/ex/chips/RecipientEntry;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1285
    const-string/jumbo v6, ""

    invoke-interface {p3, p1, p2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1286
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V

    .line 1287
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1304
    .end local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :goto_0
    return v5

    .line 1291
    .restart local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_2
    if-eqz v2, :cond_3

    .line 1292
    const-string/jumbo v7, ""

    invoke-static {p3, p1, p2, v7}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1293
    invoke-direct {p0, v2, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1294
    .local v1, "chipText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    if-le p1, v9, :cond_3

    if-le p2, v9, :cond_3

    .line 1295
    invoke-interface {p3, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1298
    .end local v1    # "chipText":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v6

    if-ne p2, v6, :cond_4

    .line 1299
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1301
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0

    .end local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_5
    move v5, v6

    .line 1304
    goto :goto_0
.end method

.method private loseFocusCreateTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 7
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1309
    const/4 v5, 0x0

    .line 1345
    :goto_0
    return-object v5

    .line 1311
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1312
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1314
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1315
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .line 1316
    .local v0, "display":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v1

    .line 1317
    .local v1, "isValid":Z
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 1318
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1320
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1323
    :cond_2
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1325
    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1329
    :cond_3
    const/4 v4, 0x0

    .line 1330
    .local v4, "validatedToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 1331
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->fixText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1332
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1333
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1334
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1335
    .local v2, "tokenized":[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    if-lez v5, :cond_4

    .line 1336
    aget-object v5, v2, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1337
    const/4 v1, 0x1

    .line 1345
    .end local v2    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .end local v4    # "validatedToken":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1340
    .restart local v4    # "validatedToken":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .line 1341
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object v4, p1

    .line 1345
    goto :goto_2
.end method

.method private loseFocusdshouldCreateChip(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLetterTile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "senderAddress"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    .line 613
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    if-nez v4, :cond_0

    .line 614
    new-instance v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-direct {v4, p3}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    .line 616
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 617
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 619
    .local v1, "idealIconHeight":I
    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 622
    .local v2, "idealIconWidth":I
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    const/high16 v4, 0x3f800000

    invoke-direct {v0, v2, v1, v4}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>(IIF)V

    .line 626
    .local v0, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    new-instance v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, p1, p2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 893
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 894
    return-void
.end method

.method private putOffsetInRange(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1768
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1769
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1774
    .local v0, "offset":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    return v1

    .line 1771
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->supportGetOffsetForPosition(FF)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .param p1, "o"    # I

    .prologue
    .line 1781
    move v3, p1

    .line 1782
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1783
    .local v6, "text":Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1785
    .local v2, "length":I
    move v5, v2

    .line 1786
    .local v5, "realLength":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1787
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 1788
    add-int/lit8 v5, v5, -0x1

    .line 1786
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1796
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 1804
    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_1
    return v4

    .line 1799
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1800
    .local v0, "editable":Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-static {v0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1802
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 1804
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method private recipientAlreadExist(Lcom/kingsoft/ex/chips/RecipientEntry;)Z
    .locals 8
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    const/4 v5, 0x0

    .line 2052
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2053
    .local v3, "editable":Landroid/text/Editable;
    if-nez v3, :cond_1

    .line 2076
    :cond_0
    :goto_0
    return v5

    .line 2057
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2058
    .local v2, "contacts":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2062
    invoke-static {v2}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2064
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2068
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 2069
    .local v0, "bean":Lcom/kingsoft/email/provider/EmailSmallBean;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2072
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private removeIllegalCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1391
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1392
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1393
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1402
    .local v0, "c":C
    const/16 v4, 0x20

    if-le v0, v4, :cond_0

    const/16 v4, 0x7e

    if-le v0, v4, :cond_1

    .line 1392
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1406
    :cond_1
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x40

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    .line 1412
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1414
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private scrollBottomIntoView()V
    .locals 7

    .prologue
    .line 473
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v4, :cond_0

    .line 474
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 475
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLocationOnScreen([I)V

    .line 476
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v2

    .line 477
    .local v2, "height":I
    const/4 v4, 0x1

    aget v4, v3, v4

    add-int v0, v4, v2

    .line 481
    .local v0, "currentPos":I
    iget v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v4, v4

    iget v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mActionBarHeight:I

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getExcessTopPadding()I

    move-result v5

    add-int v1, v4, v5

    .line 482
    .local v1, "desiredPos":I
    if-le v0, v1, :cond_0

    .line 483
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 486
    .end local v0    # "currentPos":I
    .end local v1    # "desiredPos":I
    .end local v2    # "height":I
    .end local v3    # "location":[I
    :cond_0
    return-void
.end method

.method private scrollLineIntoView(I)V
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1699
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 13
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2357
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2358
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2359
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2360
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    .line 2361
    .local v6, "spannable":Landroid/text/Spannable;
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2362
    .local v5, "spanStart":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2363
    .local v4, "spanEnd":I
    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2364
    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2365
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2366
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2367
    invoke-interface {v1, v8}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-object v9, v8

    .line 2368
    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2425
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    .end local v6    # "spannable":Landroid/text/Spannable;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    .line 2371
    :cond_0
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v9

    const-wide/16 v11, -0x2

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->isGalContact()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2373
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 2374
    .local v7, "start":I
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2375
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2378
    :try_start_0
    iget-boolean v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-eqz v9, :cond_2

    .line 2379
    const/4 v3, 0x0

    goto :goto_0

    .line 2381
    :cond_2
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2386
    .local v3, "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2387
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string/jumbo v9, ""

    invoke-static {v1, v7, v2, v9}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2388
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    const/4 v9, -0x1

    if-ne v2, v9, :cond_5

    .line 2389
    :cond_3
    const-string/jumbo v9, "RecipientEditTextView"

    const-string/jumbo v10, "The chip being selected no longer exists but should."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2393
    :goto_1
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2394
    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2395
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 2397
    :cond_4
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v10

    invoke-direct {p0, v3, v9, v10}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->showAddress(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    .line 2398
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 2382
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2384
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2391
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_5
    const/16 v9, 0x21

    invoke-interface {v1, v3, v7, v2, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2402
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "start":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v7

    .line 2403
    .restart local v7    # "start":I
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2404
    .restart local v2    # "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2407
    :try_start_1
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2412
    .restart local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2413
    .restart local v1    # "editable":Landroid/text/Editable;
    const-string/jumbo v9, ""

    invoke-static {v1, v7, v2, v9}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2414
    const/4 v9, -0x1

    if-eq v7, v9, :cond_7

    const/4 v9, -0x1

    if-ne v2, v9, :cond_9

    .line 2415
    :cond_7
    const-string/jumbo v9, "RecipientEditTextView"

    const-string/jumbo v10, "The chip being selected no longer exists but should."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2419
    :goto_2
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2420
    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2421
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 2424
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 2408
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :catch_1
    move-exception v0

    .line 2409
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2410
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2417
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v3    # "newChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_9
    const/16 v9, 0x21

    invoke-interface {v1, v3, v7, v2, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method private setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x40800000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 787
    sget-object v3, Lcom/android/email/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v3, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 789
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 791
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 792
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 793
    const v3, 0x7f0200fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 795
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 797
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 798
    const v3, 0x7f020100

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 800
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 801
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 802
    const v3, 0x7f020101

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 804
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 805
    iget v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    if-ne v3, v6, :cond_3

    .line 806
    const v3, 0x7f0d0069

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipPadding:I

    .line 808
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 810
    iget v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    if-ne v3, v6, :cond_4

    .line 811
    const v3, 0x7f040042

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesLayout:I

    .line 814
    :cond_4
    const v3, 0x7f02018b

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 816
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040093

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 818
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 819
    iget v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_5

    .line 820
    const v3, 0x7f0d0068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 822
    :cond_5
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 823
    iget v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipFontSize:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_6

    .line 824
    const v3, 0x7f0d006a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 826
    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 828
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 829
    const v3, 0x7f0200ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 831
    :cond_7
    const v3, 0x7f0d00ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    .line 832
    const v3, 0x7f0e000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMaxLines:I

    .line 833
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 834
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 835
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mActionBarHeight:I

    .line 838
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 839
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowEditableText(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 4
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2430
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v0

    .line 2431
    .local v0, "contactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showAddress(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 6
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "popup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    const/4 v5, 0x1

    .line 2437
    iget-boolean v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    if-nez v3, :cond_0

    .line 2459
    :goto_0
    return-void

    .line 2440
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2441
    .local v1, "line":I
    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 2444
    .local v0, "bottom":I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2445
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2446
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2447
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createSingleAddressAdapter(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2448
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEditTextView$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$9;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2455
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2456
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2457
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2458
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method private showAlternates(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V
    .locals 2
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "alternatesPopup"    # Landroid/widget/ListPopupWindow;
    .param p3, "width"    # I

    .prologue
    .line 1703
    new-instance v1, Lcom/kingsoft/ex/chips/RecipientEditTextView$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingsoft/ex/chips/RecipientEditTextView$7;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Landroid/widget/ListPopupWindow;I)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1744
    return-void
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3218
    iget-boolean v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    if-nez v3, :cond_0

    .line 3250
    :goto_0
    return-void

    .line 3221
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 3222
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3223
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 3227
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3228
    const v0, 0x7f100154

    .line 3232
    .local v0, "btnTitleId":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3234
    .local v2, "buttonTitle":Ljava/lang/String;
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;

    invoke-direct {v3, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 3244
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    .line 3246
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog;->setCancelable(Z)V

    .line 3247
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3248
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3, p0}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3249
    iget-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0

    .line 3230
    .end local v0    # "btnTitleId":I
    .end local v2    # "buttonTitle":Ljava/lang/String;
    :cond_1
    const v0, 0x7f100153

    .restart local v0    # "btnTitleId":I
    goto :goto_1
.end method

.method private shrink()V
    .locals 12

    .prologue
    const-wide/16 v9, -0x1

    .line 494
    iget-object v11, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v11, :cond_0

    .line 542
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v11, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v1

    .line 498
    .local v1, "contactId":J
    :goto_1
    iget-object v11, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v11, :cond_2

    cmp-long v9, v1, v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v9

    if-nez v9, :cond_2

    const-wide/16 v9, -0x2

    cmp-long v9, v1, v9

    if-eqz v9, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 541
    :goto_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .end local v1    # "contactId":J
    :cond_1
    move-wide v1, v9

    .line 497
    goto :goto_1

    .line 502
    .restart local v1    # "contactId":J
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v9

    if-gtz v9, :cond_3

    .line 508
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 514
    :cond_3
    iget v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v9, :cond_5

    .line 515
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 539
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 517
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 518
    .local v3, "editable":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 519
    .local v4, "end":I
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v9, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 520
    .local v6, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v9

    const-class v10, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v9, v6, v4, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 522
    .local v0, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_6

    array-length v9, v0

    if-nez v9, :cond_4

    .line 523
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 524
    .local v7, "text":Landroid/text/Editable;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v9, v7, v6}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 526
    .local v8, "whatEnd":I
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-interface {v7, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_7

    .line 527
    invoke-virtual {p0, v8}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 531
    :cond_7
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 532
    .local v5, "selEnd":I
    if-eq v8, v5, :cond_8

    .line 533
    invoke-direct {p0, v6, v8}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handleEdit(II)V

    goto :goto_3

    .line 535
    :cond_8
    invoke-direct {p0, v6, v4, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private startDrag(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 5
    .param p1, "currentChip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 3164
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 3165
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 3168
    .local v1, "data":Landroid/content/ClipData;
    new-instance v2, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 3172
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3173
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1928
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-direct {p0, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1930
    .local v3, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    if-nez v3, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1933
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1934
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1935
    .local v2, "end":I
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1945
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1946
    .local v1, "editable":Landroid/text/Editable;
    invoke-direct {p0, v1, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isExistRecipient(Landroid/text/Editable;Lcom/kingsoft/ex/chips/RecipientEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1947
    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1948
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V

    goto :goto_0

    .line 1952
    :cond_1
    const-string/jumbo v5, ""

    invoke-static {v1, v4, v2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1953
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1954
    .local v0, "chip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    if-ltz v4, :cond_2

    if-ltz v2, :cond_2

    .line 1955
    invoke-interface {v1, v4, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1957
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    .line 1958
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method private supportConvertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 3130
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3132
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3133
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3134
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 3135
    return p1
.end method

.method private supportGetLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 3139
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3141
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3142
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3143
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 3144
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 3148
    invoke-direct {p0, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->supportConvertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 3149
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3123
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 3126
    :goto_0
    return v1

    .line 3124
    :cond_0
    invoke-direct {p0, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->supportGetLineAtCoordinate(F)I

    move-result v0

    .line 3125
    .local v0, "line":I
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->supportGetOffsetAtCoordinate(IF)I

    move-result v1

    .line 3126
    .local v1, "offset":I
    goto :goto_0
.end method

.method private static tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "destination"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1141
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1142
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 1144
    .end local p0    # "destination":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private unselectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 9
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 2467
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 2468
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2469
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2470
    .local v1, "editable":Landroid/text/Editable;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2471
    if-eq v3, v5, :cond_0

    if-ne v2, v5, :cond_3

    .line 2472
    :cond_0
    const-string/jumbo v4, "RecipientEditTextView"

    const-string/jumbo v5, "The chip doesn\'t exist or may be a chip a user was editing"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2473
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2474
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 2488
    :cond_1
    :goto_0
    invoke-virtual {p0, v8}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2489
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2490
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2491
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2493
    :cond_2
    return-void

    .line 2476
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2477
    const-string/jumbo v4, ""

    invoke-static {v1, v3, v2, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2478
    invoke-interface {v1, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2480
    :try_start_0
    iget-boolean v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v4, :cond_1

    .line 2481
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    const/16 v5, 0x21

    invoke-interface {v1, v4, v3, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 405
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 408
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 410
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "displayString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    sget-object v1, Lcom/kingsoft/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/kingsoft/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 420
    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 421
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v0    # "displayString":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_3

    .line 427
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 2225
    const/4 v1, 0x0

    .line 2226
    .local v1, "tokenCount":I
    const/4 v0, 0x0

    .line 2227
    .local v0, "start":I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2228
    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 2229
    add-int/lit8 v1, v1, 0x1

    .line 2230
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2234
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 7
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 1848
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1850
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1851
    :cond_0
    const/4 v1, 0x0

    .line 1854
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1855
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1868
    .local v5, "trimmedDisplayText":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1869
    .local v2, "index":I
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    return-object v6

    .line 1857
    .end local v2    # "index":I
    .end local v5    # "trimmedDisplayText":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 1860
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 1861
    .local v4, "tokenized":[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 1862
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1865
    .end local v4    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_3
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v0, v6}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "trimmedDisplayText":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .restart local v2    # "index":I
    :cond_4
    move-object v6, v5

    .line 1869
    goto :goto_1
.end method

.method createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 1877
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1878
    .local v1, "display":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1880
    :cond_0
    const/4 v1, 0x0

    .line 1882
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1887
    .end local v1    # "display":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1884
    .restart local v1    # "display":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v1, v0

    .line 1885
    goto :goto_0

    .line 1887
    :cond_3
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 22

    .prologue
    .line 2244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreChipPlainText()V

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2249
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2252
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->length()I

    move-result v20

    const-class v21, Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface/range {v18 .. v21}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ImageSpan;

    .line 2253
    .local v14, "tempMore":[Landroid/text/style/ImageSpan;
    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 2254
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-interface/range {v18 .. v19}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2256
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v9

    .line 2258
    .local v9, "recipients":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 2259
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_0

    .line 2262
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    .line 2263
    .local v12, "spannable":Landroid/text/Spannable;
    array-length v7, v9

    .line 2264
    .local v7, "numRecipients":I
    add-int/lit8 v8, v7, -0x2

    .line 2265
    .local v8, "overage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v6

    .line 2266
    .local v6, "moreSpan":Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 2267
    const/16 v17, 0x0

    .line 2268
    .local v17, "totalReplaceStart":I
    const/16 v16, 0x0

    .line 2269
    .local v16, "totalReplaceEnd":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 2270
    .local v15, "text":Landroid/text/Editable;
    sub-int v5, v7, v8

    .local v5, "i":I
    :goto_1
    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_9

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    sub-int v18, v7, v8

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 2273
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 2275
    :cond_5
    array-length v0, v9

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 2276
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 2278
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2279
    :cond_7
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 2280
    .local v11, "spanStart":I
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 2281
    .local v10, "spanEnd":I
    aget-object v18, v9, v5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2283
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    :cond_8
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2270
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2285
    :cond_9
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 2286
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v16

    .line 2288
    :cond_a
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2289
    .local v4, "end":I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2290
    .local v13, "start":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v15, v13, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2291
    .local v3, "chipText":Landroid/text/SpannableString;
    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2292
    invoke-interface {v15, v13, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2293
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2295
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMaxLines:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 2296
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2207
    .local v5, "text":Landroid/text/Editable;
    const/4 v4, 0x0

    .line 2208
    .local v4, "start":I
    move v1, v4

    .line 2209
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 2210
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 2211
    move v4, v1

    .line 2209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2214
    :cond_0
    const/4 v4, 0x0

    .line 2215
    invoke-virtual {p0, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 2216
    .local v6, "tokenCount":I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 2217
    .local v3, "moreSpan":Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2218
    .local v0, "chipText":Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2219
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2220
    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2221
    return-void
.end method

.method createReplacementChip(IILandroid/text/Editable;Z)V
    .locals 11
    .param p1, "tokenStart"    # I
    .param p2, "tokenEnd"    # I
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "visible"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1024
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1030
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1031
    .local v6, "trimmedToken":Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1032
    .local v1, "commitCharIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_2

    .line 1033
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1035
    :cond_2
    invoke-virtual {p0, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1036
    .local v3, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    if-eqz v3, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :try_start_0
    iget-boolean v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    if-nez v7, :cond_4

    .line 1044
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    move v4, v9

    .line 1047
    .local v4, "leaveSpace":Z
    :goto_1
    if-eqz p4, :cond_7

    const/4 v7, 0x0

    invoke-direct {p0, v3, v7, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/kingsoft/ex/chips/RecipientEntry;ZZ)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1054
    .end local v4    # "leaveSpace":Z
    :cond_4
    :goto_2
    const/16 v7, 0x21

    invoke-interface {p3, v0, p1, p2, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    .line 1058
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1060
    :cond_5
    invoke-interface {v0, v5}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1061
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v4, v8

    .line 1044
    goto :goto_1

    .line 1047
    .restart local v4    # "leaveSpace":Z
    :cond_7
    :try_start_1
    new-instance v7, Lcom/kingsoft/ex/chips/recipientchip/InvisibleRecipientChip;

    invoke-direct {v7, v3}, Lcom/kingsoft/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/kingsoft/ex/chips/RecipientEntry;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_2

    .line 1051
    .end local v4    # "leaveSpace":Z
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "RecipientEditTextView"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v7, v10, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 7
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1081
    const/4 v5, 0x0

    .line 1131
    :goto_0
    return-object v5

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1084
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1086
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1087
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .line 1088
    .local v0, "display":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v1

    .line 1089
    .local v1, "isValid":Z
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 1092
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1094
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1097
    :cond_2
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1099
    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1105
    :cond_3
    const/4 v4, 0x0

    .line 1106
    .local v4, "validatedToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 1108
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v5, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1109
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1110
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1114
    invoke-static {v4}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1115
    .local v2, "tokenized":[Landroid/text/util/Rfc822Token;
    array-length v5, v2

    if-lez v5, :cond_4

    .line 1116
    aget-object v5, v2, v6

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1117
    const/4 v1, 0x1

    .line 1131
    .end local v2    # "tokenized":[Landroid/text/util/Rfc822Token;
    :cond_4
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .end local v4    # "validatedToken":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 1125
    .restart local v4    # "validatedToken":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .line 1126
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object v4, p1

    .line 1131
    goto :goto_2
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 3157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 3158
    return-void
.end method

.method public expand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 545
    iget-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v1, :cond_0

    .line 546
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeMoreChip()V

    .line 549
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 550
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 551
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 554
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 555
    new-instance v1, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v1, p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 556
    iput-object v3, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 558
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 551
    goto :goto_0
.end method

.method public findChip(Ljava/lang/String;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 8
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1831
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1834
    .local v1, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1835
    aget-object v0, v1, v3

    .line 1836
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    .line 1837
    .local v2, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1842
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :goto_1
    return-object v0

    .line 1834
    .restart local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1842
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v2    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getChipBackground(Lcom/kingsoft/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "contact"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 716
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getContactIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2104
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2105
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 2106
    .local v2, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 2107
    move-object v0, v2

    .local v0, "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2108
    .local v1, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2111
    .end local v0    # "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method getDataIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2117
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2118
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 2119
    .local v2, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_0

    .line 2120
    move-object v0, v2

    .local v0, "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2121
    .local v1, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getDataId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2124
    .end local v0    # "arr$":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method getLastChip()Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 3

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "last":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 362
    .local v0, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 363
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 365
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2176
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 2178
    .local v0, "moreSpans":[Lcom/kingsoft/ex/chips/RecipientEditTextView$MoreImageSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 7

    .prologue
    .line 2129
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2131
    .local v1, "recips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2133
    .local v0, "recipientsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2134
    .local v2, "spannable":Landroid/text/Spannable;
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEditTextView$8;

    invoke-direct {v3, p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView$8;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v3
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2780
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2781
    .local v7, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v7, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2782
    .local v5, "originalTokenStart":I
    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2783
    .local v4, "lastAddress":Ljava/lang/String;
    move v9, v5

    .line 2784
    .local v9, "tokenStart":I
    const/4 v6, 0x0

    .line 2785
    .local v6, "prevTokenStart":I
    const/4 v3, 0x0

    .line 2786
    .local v3, "findChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2787
    .local v0, "created":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;>;"
    if-eqz v9, :cond_3

    .line 2789
    :cond_0
    if-eqz v9, :cond_1

    if-nez v3, :cond_1

    if-eq v9, v6, :cond_1

    .line 2790
    move v6, v9

    .line 2791
    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v10, v7, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 2792
    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 2793
    if-ne v9, v5, :cond_0

    if-nez v3, :cond_0

    .line 2797
    :cond_1
    if-eq v9, v5, :cond_3

    .line 2798
    if-eqz v3, :cond_2

    .line 2799
    move v9, v6

    .line 2803
    :cond_2
    :goto_0
    if-ge v9, v5, :cond_3

    .line 2804
    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v8

    .line 2806
    .local v8, "tokenEnd":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2807
    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 2808
    .local v1, "createdChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-nez v1, :cond_5

    .line 2819
    .end local v1    # "createdChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v8    # "tokenEnd":I
    :cond_3
    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2820
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2821
    .local v2, "editable":Landroid/text/Editable;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 2822
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2823
    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2825
    .end local v2    # "editable":Landroid/text/Editable;
    :cond_4
    return-object v0

    .line 2812
    .restart local v1    # "createdChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v8    # "tokenEnd":I
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 2813
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method handlePendingChips()V
    .locals 14

    .prologue
    const/16 v10, 0x32

    const/4 v7, 0x1

    const/4 v13, 0x2

    const/4 v6, 0x0

    .line 913
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getViewWidth()I

    move-result v5

    if-gtz v5, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_0

    .line 923
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v8

    .line 924
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 926
    .local v1, "editable":Landroid/text/Editable;
    iget v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gt v5, v10, :cond_8

    .line 927
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 928
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 929
    .local v0, "current":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 931
    .local v4, "tokenStart":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v3, v5, -0x1

    .line 932
    .local v3, "tokenEnd":I
    if-ltz v4, :cond_4

    .line 935
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v9, 0x2c

    if-ne v5, v9, :cond_2

    .line 937
    add-int/lit8 v3, v3, 0x1

    .line 939
    :cond_2
    if-lt v2, v13, :cond_3

    iget-boolean v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-nez v5, :cond_5

    :cond_3
    move v5, v7

    :goto_2
    invoke-virtual {p0, v4, v3, v1, v5}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;Z)V

    .line 942
    :cond_4
    iget v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    .line 939
    goto :goto_2

    .line 944
    .end local v0    # "current":Ljava/lang/String;
    .end local v3    # "tokenEnd":I
    .end local v4    # "tokenStart":I
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeEnd()V

    .line 949
    .end local v2    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v10, :cond_b

    .line 951
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v13, :cond_9

    .line 952
    :cond_7
    new-instance v5, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 953
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 974
    :goto_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 975
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 976
    monitor-exit v8

    goto/16 :goto_0

    .end local v1    # "editable":Landroid/text/Editable;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 946
    .restart local v1    # "editable":Landroid/text/Editable;
    :cond_8
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mNoChips:Z

    goto :goto_3

    .line 956
    :cond_9
    new-instance v5, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/RecipientEditTextView$1;)V

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    .line 957
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v9, v6, v7

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 959
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_a

    .line 960
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v7, 0x2

    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 966
    :goto_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_4

    .line 964
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    goto :goto_5

    .line 971
    :cond_b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createMoreChip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return v4

    .line 1627
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1628
    .local v1, "end":I
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1629
    .local v2, "start":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1630
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1631
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1632
    .local v0, "atEnd":C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isGeneratedContact(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 4
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2727
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v0

    .line 2728
    .local v0, "contactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isPhoneQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3284
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 2716
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 2717
    .local v0, "end":I
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 2718
    .local v2, "len":I
    if-eq v0, v2, :cond_3

    .line 2719
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2723
    .local v1, "last":C
    :goto_1
    const/16 v4, 0x2c

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    .line 2716
    .end local v0    # "end":I
    .end local v1    # "last":C
    .end local v2    # "len":I
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 2721
    .restart local v0    # "end":I
    .restart local v2    # "len":I
    :cond_3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .restart local v1    # "last":C
    goto :goto_1
.end method

.method movePastTerminators(I)I
    .locals 4
    .param p1, "tokenEnd"    # I

    .prologue
    .line 2830
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 2842
    .end local p1    # "tokenEnd":I
    .local v1, "tokenEnd":I
    :goto_0
    return v1

    .line 2833
    .end local v1    # "tokenEnd":I
    .restart local p1    # "tokenEnd":I
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2834
    .local v0, "atEnd":C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 2835
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 2839
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 2840
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 2842
    .end local p1    # "tokenEnd":I
    .restart local v1    # "tokenEnd":I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2154
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 322
    return-void
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1759
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1760
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1762
    :cond_0
    iput p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 1763
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3277
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3279
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3280
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    .line 3281
    return-void
.end method

.method public onClick(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;IFF)V
    .locals 1
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2584
    invoke-interface {p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isInDelete(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2586
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2171
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 343
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 344
    .local v1, "imeActions":I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 346
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 348
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 350
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x40000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 351
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 354
    :cond_1
    const/4 v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 355
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10017b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 356
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2159
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 317
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 3272
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3090
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v0, 0x1

    .line 3180
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3191
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3183
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3185
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_0

    .line 3188
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 3180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 326
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 3096
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previous"    # Landroid/graphics/Rect;

    .prologue
    .line 434
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 435
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 438
    :cond_0
    if-nez p1, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 442
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->loseFocusCommitByChar()V

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 1921
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1924
    :cond_0
    const-string/jumbo v0, "A05"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0, p3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1553
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_2

    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    .line 1554
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1557
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1579
    :cond_1
    :goto_0
    return v0

    .line 1561
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1579
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1564
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1565
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_3

    .line 1569
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1571
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1575
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_1

    .line 1561
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1174
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1176
    const/4 v0, 0x1

    .line 1178
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1202
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1193
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 1195
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1197
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitDefault()Z

    goto :goto_0

    .line 1191
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3101
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v4, :cond_1

    .line 3117
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3105
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 3106
    .local v3, "y":F
    invoke-direct {p0, v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v1

    .line 3107
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 3108
    .local v0, "currentChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    .line 3109
    iget-boolean v4, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_2

    .line 3111
    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->startDrag(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_0

    .line 3114
    :cond_2
    invoke-interface {v0}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2163
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 393
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 3255
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLastChip()Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 373
    .local v0, "last":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 377
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 378
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3261
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3266
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 870
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 871
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 872
    iget v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 873
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 879
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 880
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 881
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 882
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 875
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 884
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 885
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 887
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    .line 889
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2760
    const v1, 0x1020022

    if-ne p1, v1, :cond_0

    .line 2761
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2763
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 2764
    const/4 v1, 0x1

    .line 2766
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 1655
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1657
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1692
    :cond_0
    :goto_0
    return v3

    .line 1659
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1660
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1661
    .local v0, "action":I
    const/4 v1, 0x0

    .line 1662
    .local v1, "chipWasSelected":Z
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v7, :cond_2

    .line 1663
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1665
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v7, :cond_4

    if-ne v0, v8, :cond_4

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1667
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1668
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v4

    .line 1669
    .local v4, "offset":I
    invoke-direct {p0, v4}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->findChip(I)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 1670
    .local v2, "currentChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_7

    .line 1671
    if-ne v0, v8, :cond_3

    .line 1672
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eq v7, v2, :cond_5

    .line 1673
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1674
    invoke-direct {p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->selectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1683
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 1684
    const/4 v3, 0x1

    .line 1689
    .end local v2    # "currentChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v4    # "offset":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_4
    :goto_2
    if-ne v0, v8, :cond_0

    if-nez v1, :cond_0

    .line 1690
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1675
    .restart local v2    # "currentChip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v4    # "offset":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_5
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v7, :cond_6

    .line 1676
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1677
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 1678
    invoke-direct {p0, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->selectChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    goto :goto_1

    .line 1680
    :cond_6
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->onClick(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;IFF)V

    goto :goto_1

    .line 1685
    :cond_7
    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1686
    const/4 v1, 0x1

    goto :goto_2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 1604
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1605
    .local v2, "isCompletedToken":Z
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 1606
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1607
    .local v1, "end":I
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1610
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    .line 1611
    .local v3, "span":Landroid/text/Spannable;
    const-class v5, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v3, v4, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1612
    .local v0, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 1619
    .end local v0    # "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "end":I
    .end local v3    # "span":Landroid/text/Spannable;
    .end local v4    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    if-nez v2, :cond_0

    .line 1618
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 8
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 2517
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2518
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2519
    .local v1, "spanStart":I
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2520
    .local v0, "spanEnd":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2521
    .local v3, "text":Landroid/text/Editable;
    move v4, v0

    .line 2522
    .local v4, "toDelete":I
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v6, :cond_1

    const/4 v5, 0x1

    .line 2524
    .local v5, "wasSelected":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2525
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2528
    :cond_0
    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 2529
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2522
    .end local v5    # "wasSelected":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2531
    .restart local v5    # "wasSelected":Z
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2532
    if-ltz v1, :cond_3

    if-lez v4, :cond_3

    .line 2533
    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2535
    :cond_3
    if-eqz v5, :cond_4

    .line 2536
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2538
    :cond_4
    return-void
.end method

.method removeMoreChip()V
    .locals 11

    .prologue
    .line 2306
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_0

    .line 2307
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 2308
    .local v7, "span":Landroid/text/Spannable;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2309
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2311
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 2313
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    .line 2316
    .local v6, "recipients":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-nez v9, :cond_1

    .line 2342
    .end local v6    # "recipients":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v7    # "span":Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 2319
    .restart local v6    # "recipients":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .restart local v7    # "span":Landroid/text/Spannable;
    :cond_1
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2320
    .local v4, "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2321
    .local v3, "editable":Landroid/text/Editable;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2326
    .local v0, "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v0}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2331
    .local v8, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2332
    .local v2, "chipStart":I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "chipEnd":I
    move v4, v1

    .line 2334
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 2335
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2339
    .end local v0    # "chip":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .end local v1    # "chipEnd":I
    .end local v2    # "chipStart":I
    .end local v8    # "token":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 2599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 2600
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2601
    return-void
.end method

.method replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V
    .locals 11
    .param p1, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .param p2, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 2546
    iget-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v8, :cond_4

    move v5, v6

    .line 2547
    .local v5, "wasSelected":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2548
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2550
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipStart(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 2551
    .local v3, "start":I
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2552
    .local v2, "end":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2553
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2554
    .local v1, "editable":Landroid/text/Editable;
    invoke-direct {p0, p2, v7}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2555
    .local v0, "chipText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 2556
    if-eq v3, v9, :cond_1

    if-ne v2, v9, :cond_5

    .line 2557
    :cond_1
    const-string/jumbo v8, "RecipientEditTextView"

    const-string/jumbo v9, "The chip to replace does not exist but should."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2558
    invoke-interface {v1, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2572
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2573
    if-eqz v5, :cond_3

    .line 2574
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2576
    :cond_3
    return-void

    .end local v0    # "chipText":Ljava/lang/CharSequence;
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "start":I
    .end local v5    # "wasSelected":Z
    :cond_4
    move v5, v7

    .line 2546
    goto :goto_0

    .line 2560
    .restart local v0    # "chipText":Ljava/lang/CharSequence;
    .restart local v1    # "editable":Landroid/text/Editable;
    .restart local v2    # "end":I
    .restart local v3    # "start":I
    .restart local v5    # "wasSelected":Z
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2563
    move v4, v2

    .line 2565
    .local v4, "toReplace":I
    :goto_2
    if-ltz v4, :cond_6

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    .line 2566
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2568
    :cond_6
    invoke-interface {v1, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1166
    return-void
.end method

.method sanitizeBetween()V
    .locals 8

    .prologue
    .line 1474
    iget v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 1479
    .local v3, "recips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1480
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1481
    .local v2, "last":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v0, 0x0

    .line 1482
    .local v0, "beforeLast":Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1483
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1485
    :cond_2
    const/4 v4, 0x0

    .line 1486
    .local v4, "startLooking":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1487
    .local v1, "end":I
    if-eqz v0, :cond_3

    .line 1488
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1489
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1490
    .local v5, "text":Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1494
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1495
    add-int/lit8 v4, v4, 0x1

    .line 1498
    .end local v5    # "text":Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1499
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 8

    .prologue
    .line 990
    iget v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 995
    .local v0, "chips":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    .line 996
    .local v4, "spannable":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 999
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_3

    .line 1000
    iget-object v5, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1004
    .local v2, "end":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1005
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1006
    .local v3, "length":I
    if-le v3, v2, :cond_0

    .line 1008
    const-string/jumbo v5, "RecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1009
    const-string/jumbo v5, "RecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1012
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1002
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "end":I
    .end local v3    # "length":I
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getLastChip()Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "end":I
    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    check-cast p1, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;, "TT;"
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView$6;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView$6;-><init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 470
    return-void
.end method

.method setChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "chipBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 850
    return-void
.end method

.method setChipHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 854
    int-to-float v0, p1

    iput v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 855
    return-void
.end method

.method setMoreItem(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "moreItem"    # Landroid/widget/TextView;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 844
    return-void
.end method

.method public setOnFocusListShrinkRecipients(Z)V
    .locals 0
    .param p1, "shrink"    # Z

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 866
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .param p1, "tokenizer"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1150
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1151
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Landroid/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1156
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1157
    return-void
.end method

.method public submitItemAtPositionbyESB(Lcom/kingsoft/email/provider/EmailSmallBean;)V
    .locals 10
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;

    .prologue
    const/4 v9, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/kingsoft/mail/utils/ContactHelper;->queryEmailsByESB(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 2032
    .local v3, "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-direct {p0, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->recipientAlreadExist(Lcom/kingsoft/ex/chips/RecipientEntry;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2049
    :goto_0
    return-void

    .line 2036
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 2037
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 2038
    .local v2, "end":I
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2039
    .local v4, "ss":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "l"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2040
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v5

    .line 2042
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2043
    .local v1, "editable":Landroid/text/Editable;
    const-string/jumbo v6, ""

    invoke-static {v1, v5, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2044
    invoke-direct {p0, v3, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2045
    .local v0, "chip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    .line 2046
    invoke-interface {v1, v5, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2048
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    goto :goto_0
.end method

.method public submitItemAtPositionbyName(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2012
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/kingsoft/mail/utils/ContactHelper;->queryEmailsByname(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 2013
    .local v3, "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 2014
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 2015
    .local v2, "end":I
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2016
    .local v4, "ss":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "l"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2017
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v5

    .line 2019
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2020
    .local v1, "editable":Landroid/text/Editable;
    const-string/jumbo v6, ""

    invoke-static {v1, v5, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2021
    invoke-direct {p0, v3, v9}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChip(Lcom/kingsoft/ex/chips/RecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2022
    .local v0, "chip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-ltz v5, :cond_0

    if-ltz v2, :cond_0

    .line 2023
    invoke-interface {v1, v5, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2025
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    .line 2026
    return-void
.end method
