.class public Lcom/kingsoft/email/service/PolicyService;
.super Landroid/app/Service;
.source "PolicyService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

.field private mContext:Landroid/content/Context;

.field private mSecurityPolicy:Lcom/kingsoft/email/SecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/service/PolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/kingsoft/email/service/PolicyService$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/service/PolicyService$1;-><init>(Lcom/kingsoft/email/service/PolicyService;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/service/PolicyService;)Lcom/kingsoft/email/SecurityPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/PolicyService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/email/service/PolicyService;->mSecurityPolicy:Lcom/kingsoft/email/SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingsoft/email/service/PolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/service/PolicyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/PolicyService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/email/service/PolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iput-object p0, p0, Lcom/kingsoft/email/service/PolicyService;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/PolicyService;->mSecurityPolicy:Lcom/kingsoft/email/SecurityPolicy;

    .line 85
    iget-object v0, p0, Lcom/kingsoft/email/service/PolicyService;->mBinder:Lcom/android/emailcommon/service/IPolicyService$Stub;

    return-object v0
.end method
