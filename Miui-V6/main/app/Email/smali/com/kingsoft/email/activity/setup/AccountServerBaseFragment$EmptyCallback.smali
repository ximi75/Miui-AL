.class Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 103
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 101
    return-void
.end method

.method public onProceedNext(ILcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V
    .locals 0
    .param p1, "checkMode"    # I
    .param p2, "target"    # Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    .prologue
    .line 102
    return-void
.end method
