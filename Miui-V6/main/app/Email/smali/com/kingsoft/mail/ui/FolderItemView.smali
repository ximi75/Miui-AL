.class public Lcom/kingsoft/mail/ui/FolderItemView;
.super Landroid/widget/RelativeLayout;
.source "FolderItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;
    }
.end annotation


# static fields
.field private static final STATE_DRAG_MODE:[I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFolderItem:Lcom/kingsoft/mail/adapter/DrawerItem;

.field private mFolderTextView:Landroid/widget/TextView;

.field private mIsDragMode:Z

.field private mUnreadCountTextView:Landroid/widget/TextView;

.field private mUnseenCountTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01007b

    aput v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/ui/FolderItemView;->STATE_DRAG_MODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mIsDragMode:Z

    .line 82
    return-void
.end method

.method public static areSameViews(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 4
    .param p0, "a"    # Lcom/kingsoft/mail/providers/Folder;
    .param p1, "b"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-nez p0, :cond_2

    .line 101
    if-nez p1, :cond_1

    :goto_0
    move v1, v0

    .line 107
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    if-eqz p1, :cond_0

    .line 107
    if-eq p0, p1, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    iget-boolean v3, p1, Lcom/kingsoft/mail/providers/Folder;->hasChildren:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    iget v3, p1, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iget v3, p1, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    if-ne v2, v3, :cond_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private isDroppableTarget(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface {v0, p1, v1}, Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;->supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDragMode(Z)V
    .locals 0
    .param p1, "isDragMode"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mIsDragMode:Z

    .line 232
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderItemView;->refreshDrawableState()V

    .line 233
    return-void
.end method

.method private setUnreadCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    if-lez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void

    .line 151
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setUnseenCount(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "count"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    if-lez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    if-lez p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/kingsoft/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/adapter/DrawerItem;Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;)V
    .locals 4
    .param p1, "folderItem"    # Lcom/kingsoft/mail/adapter/DrawerItem;
    .param p2, "dropHandler"    # Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    .prologue
    const/16 v3, 0x8

    .line 115
    iget-object v0, p1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 116
    iput-object p2, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    .line 117
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderItem:Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 119
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder;->level:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    if-lez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, v1, Lcom/kingsoft/mail/providers/Folder;->unseenCount:I

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->setUnseenCount(II)V

    .line 128
    :goto_1
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/adapter/DrawerItem;->getFolderFullName()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getFolderUnreadDisplayCount(Lcom/kingsoft/mail/providers/Folder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/FolderItemView;->setUnreadCount(I)V

    goto :goto_1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 223
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 224
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mIsDragMode:Z

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/kingsoft/mail/ui/FolderItemView;->STATE_DRAG_MODE:[I

    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->mergeDrawableStates([I[I)[I

    .line 227
    :cond_0
    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 218
    :goto_0
    :pswitch_0
    return v0

    .line 195
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/FolderItemView;->setDragMode(Z)V

    .line 200
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->setDragMode(Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    if-nez v2, :cond_0

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface {v1, p1, v2}, Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;->handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 88
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0c0119

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method public final overrideUnreadCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "FLF->FolderItem.getFolderView: unread count mismatch found (%s vs %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderItemView;->setUnreadCount(I)V

    .line 176
    return-void
.end method

.method public setIcon(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 5
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v4, 0x0

    .line 135
    const v1, 0x7f0c011a

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, "folderIconView":Landroid/widget/ImageView;
    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Folder;->setIcon(Lcom/kingsoft/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 137
    iget v1, p1, Lcom/kingsoft/mail/providers/Folder;->level:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderItem:Lcom/kingsoft/mail/adapter/DrawerItem;

    iget v1, v1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 138
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
