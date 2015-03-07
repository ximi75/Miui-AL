.class Lcom/kingsoft/emailcommon/utility/CharsetDetector$1;
.super Ljava/lang/Object;
.source "CharsetDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailcommon/utility/CharsetDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailcommon/utility/CharsetDetector;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailcommon/utility/CharsetDetector;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector$1;->this$0:Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector$1;->this$0:Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    # getter for: Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->access$000(Lcom/kingsoft/emailcommon/utility/CharsetDetector;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    return-void
.end method
