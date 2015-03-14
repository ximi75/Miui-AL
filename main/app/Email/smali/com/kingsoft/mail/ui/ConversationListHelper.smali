.class public Lcom/kingsoft/mail/ui/ConversationListHelper;
.super Ljava/lang/Object;
.source "ConversationListHelper.java"


# instance fields
.field private final useHeadClickTip:Z

.field private final useInOutBoxTip:Z

.field private final useLongTip:Z

.field private final useSyncDisabledTip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListHelper;->useSyncDisabledTip:Z

    .line 33
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListHelper;->useLongTip:Z

    .line 34
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListHelper;->useHeadClickTip:Z

    .line 35
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListHelper;->useInOutBoxTip:Z

    return-void
.end method


# virtual methods
.method public makeConversationListSpecialViews(Landroid/content/Context;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Account;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/ui/ControllableActivity;",
            "Lcom/kingsoft/mail/providers/Account;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSpecialItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "itemViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSpecialItemView;>;"
    return-object v0
.end method
