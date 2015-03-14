.class public abstract Lcom/kingsoft/mail/ui/FragmentRunnable;
.super Ljava/lang/Object;
.source "FragmentRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mOpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FragmentRunnable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FragmentRunnable;->mOpName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/kingsoft/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract go()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/kingsoft/mail/ui/FragmentRunnable;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to run op=\'%s\' b/c fragment is not attached: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FragmentRunnable;->mOpName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FragmentRunnable;->go()V

    goto :goto_0
.end method
