.class public Lcom/kingsoft/email/widget/text/notifier/ChStyleNotifierEvent;
.super Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;
.source "ChStyleNotifierEvent.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
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
    .line 11
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;-><init>(Ljava/util/Map;)V

    .line 12
    return-void
.end method
