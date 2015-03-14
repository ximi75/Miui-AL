.class synthetic Lcom/kingsoft/mail/ui/SwipeableListView$3;
.super Ljava/lang/Object;
.source "SwipeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SwipeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->values()[Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
