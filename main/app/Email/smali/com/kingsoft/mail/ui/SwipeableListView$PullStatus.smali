.class public final enum Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;
.super Ljava/lang/Enum;
.source "SwipeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SwipeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PullStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum LOADING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field public static final enum RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "RELEASE_To_REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 219
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "PULL_To_REFRESH"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 221
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "REFRESHING"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 223
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 225
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "CANCELLING"

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 227
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    const-string/jumbo v1, "LOADING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->LOADING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 215
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->LOADING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->$VALUES:[Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    const-class v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->$VALUES:[Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    return-object v0
.end method
