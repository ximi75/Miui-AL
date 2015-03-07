.class public Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
.super Lcom/kingsoft/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageHeaderItem"
.end annotation


# instance fields
.field public detailsExpanded:Z

.field private final mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

.field private mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

.field private mExpanded:Z

.field private mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

.field private mShowImages:Z

.field private mTimestampLong:Ljava/lang/CharSequence;

.field private mTimestampMs:J

.field private mTimestampShort:Ljava/lang/CharSequence;

.field private msg:Lcom/android/emailcommon/provider/EmailContent$Message;

.field public recipientSummaryText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/FormattedDateBuilder;ZZ)V
    .locals 1
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "dateBuilder"    # Lcom/kingsoft/mail/FormattedDateBuilder;
    .param p3, "expanded"    # Z
    .param p4, "showImages"    # Z

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .line 159
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    .line 160
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 161
    iput-boolean p3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    .line 162
    iput-boolean p4, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->detailsExpanded:Z

    .line 165
    return-void
.end method

.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)V
    .locals 1
    .param p1, "adapter"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    .param p2, "dateBuilder"    # Lcom/kingsoft/mail/FormattedDateBuilder;
    .param p3, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p4, "expanded"    # Z
    .param p5, "showImages"    # Z

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .line 148
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    .line 149
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 150
    iput-boolean p4, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    .line 151
    iput-boolean p5, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->detailsExpanded:Z

    .line 154
    return-void
.end method

.method private ensureTimestamps()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->dateReceivedMs:J

    iget-wide v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->dateReceivedMs:J

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    iget-wide v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatShortDate(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampShort:Ljava/lang/CharSequence;

    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    iget-wide v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatLongDateTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampLong:Ljava/lang/CharSequence;

    .line 271
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    goto :goto_0
.end method


# virtual methods
.method public belongsToMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bindView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "measureOnly"    # Z

    .prologue
    .line 193
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 194
    .local v0, "header":Lcom/kingsoft/mail/browse/MessageHeaderView;
    invoke-virtual {v0, p0, p2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Z)V

    .line 195
    return-void
.end method

.method public canBecomeSnapHeader()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    const v1, 0x7f04006c

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 183
    .local v0, "v":Lcom/kingsoft/mail/browse/MessageHeaderView;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$100(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAddressCache:Ljava/util/Map;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$200(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->initialize(Lcom/kingsoft/mail/browse/ConversationAccountController;Ljava/util/Map;)V

    .line 185
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMessageCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$300(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setCallbacks(Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 186
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$400(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/ContactInfoSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setContactInfoSource(Lcom/kingsoft/mail/ContactInfoSource;)V

    .line 187
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    # getter for: Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->access$500(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setVeiledMatcher(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 188
    return-object v0
.end method

.method public getAdapter()Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    return-object v0
.end method

.method public getEmailContentMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->msg:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    return-object v0
.end method

.method public getShowImages()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    return v0
.end method

.method public getTimestampLong()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->ensureTimestamps()V

    .line 254
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampLong:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestampShort()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->ensureTimestamps()V

    .line 249
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampShort:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestampString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->dateReceivedMs:J

    iget-wide v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v0, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->dateReceivedMs:J

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    .line 260
    :cond_0
    iget-wide v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    return v0
.end method

.method public onModelUpdated(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 200
    .local v0, "header":Lcom/kingsoft/mail/browse/MessageHeaderView;
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->refresh()V

    .line 201
    return-void
.end method

.method public rebindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 279
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 280
    .local v0, "header":Lcom/kingsoft/mail/browse/MessageHeaderView;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->rebind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V

    .line 281
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    if-eq v0, p1, :cond_0

    .line 215
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    .line 217
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 245
    return-void
.end method

.method public setShowImages(Z)V
    .locals 0
    .param p1, "showImages"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    .line 225
    return-void
.end method
