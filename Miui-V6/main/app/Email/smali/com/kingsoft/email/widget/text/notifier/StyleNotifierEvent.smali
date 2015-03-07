.class public Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;
.super Ljava/lang/Object;
.source "StyleNotifierEvent.java"


# instance fields
.field protected mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;->mStyles:Ljava/util/Map;

    .line 15
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;->mStyles:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public getStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;->mStyles:Ljava/util/Map;

    return-object v0
.end method
