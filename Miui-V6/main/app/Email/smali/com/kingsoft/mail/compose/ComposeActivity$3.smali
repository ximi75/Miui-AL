.class Lcom/kingsoft/mail/compose/ComposeActivity$3;
.super Ljava/lang/Thread;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->copySystemContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$3;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1559
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$3;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    sget-object v2, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/LocalContact;->insert(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :goto_0
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
