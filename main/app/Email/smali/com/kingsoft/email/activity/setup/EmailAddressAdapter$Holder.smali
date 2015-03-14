.class Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
.super Ljava/lang/Object;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field private domain:Landroid/widget/TextView;

.field private position:I

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->this$0:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;-><init>(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->domain:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$202(Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter$Holder;->position:I

    return p1
.end method
