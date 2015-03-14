.class Lcom/kingsoft/mail/utils/VeiledAddressMatcher$1;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "VeiledAddressMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/utils/VeiledAddressMatcher$1;->this$0:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/utils/VeiledAddressMatcher$1;->this$0:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->veiledAddressPattern:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/utils/VeiledAddressMatcher;->loadPattern(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/VeiledAddressMatcher;->access$000(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;Ljava/lang/String;)V

    .line 85
    return-void
.end method
