.class Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;
.super Ljava/lang/Object;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageQuery"
.end annotation


# instance fields
.field final attachmentJson:Ljava/lang/String;

.field final query:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_query"    # Ljava/lang/String;
    .param p2, "_attachmentJson"    # Ljava/lang/String;

    .prologue
    .line 3900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3901
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;->query:Ljava/lang/String;

    .line 3902
    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;->attachmentJson:Ljava/lang/String;

    .line 3903
    return-void
.end method
