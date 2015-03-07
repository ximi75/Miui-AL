.class Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Capabilities"
.end annotation


# instance fields
.field public stls:Z

.field final synthetic this$0:Lcom/kingsoft/email/mail/store/Pop3Store;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/store/Pop3Store;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;->this$0:Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 920
    const-string/jumbo v0, "STLS %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
