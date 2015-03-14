.class Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderHolder"
.end annotation


# static fields
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountTextView:Landroid/widget/TextView;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mItemView:Landroid/view/View;

.field private final mSendersTextView:Landroid/widget/TextView;

.field private mUnreadSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "sendersTextView"    # Landroid/widget/TextView;
    .param p3, "countTextView"    # Landroid/widget/TextView;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    .line 129
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mItemView:Landroid/view/View;

    .line 130
    iput-object p2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mSendersTextView:Landroid/widget/TextView;

    .line 131
    iput-object p3, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mCountTextView:Landroid/widget/TextView;

    .line 132
    return-void
.end method

.method static synthetic access$1400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public getCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public getItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mItemView:Landroid/view/View;

    return-object v0
.end method

.method public getSendersTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mSendersTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUnreadSenders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    return-object v0
.end method

.method public setFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 136
    return-void
.end method

.method public setUnreadSenders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "unreadSenders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    .line 163
    return-void
.end method
