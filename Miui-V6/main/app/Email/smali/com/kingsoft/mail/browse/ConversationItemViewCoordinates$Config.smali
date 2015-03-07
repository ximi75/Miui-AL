.class public final Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private mAttachmentPreviewMode:I

.field private mGadgetMode:I

.field private mShowColorBlock:Z

.field private mShowFolders:Z

.field private mShowMergeCount:Z

.field private mShowMergeCountLarge:Z

.field private mShowPersonalIndicator:Z

.field private mViewMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    .line 81
    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    .line 82
    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    .line 83
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    .line 86
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    .line 87
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    .line 88
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCount:Z

    .line 89
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCountLarge:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getCacheKey()I

    move-result v0

    return v0
.end method

.method private getCacheKey()I
    .locals 3

    .prologue
    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCount:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCountLarge:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public areFoldersVisible()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    return v0
.end method

.method public getAttachmentPreviewMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    return v0
.end method

.method public getGadgetMode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    return v0
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    return v0
.end method

.method public isColorBlockVisible()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    return v0
.end method

.method public isMergeCountLarge()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCountLarge:Z

    return v0
.end method

.method public isPersonalIndicatorVisible()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    return v0
.end method

.method public isShowMergeCount()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowMergeCount:Z

    return v0
.end method

.method public setViewMode(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .param p1, "viewMode"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    .line 94
    return-object p0
.end method

.method public showColorBlock()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    .line 109
    return-object p0
.end method

.method public showPersonalIndicator()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    .line 114
    return-object p0
.end method

.method public updateWidth(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    .line 119
    return-object p0
.end method

.method public withAttachmentPreviews(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .param p1, "attachmentPreviewMode"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    .line 104
    return-object p0
.end method

.method public withGadget(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .param p1, "gadget"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    .line 99
    return-object p0
.end method
