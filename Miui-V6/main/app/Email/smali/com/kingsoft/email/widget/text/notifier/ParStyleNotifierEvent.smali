.class public Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;
.super Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;
.source "ParStyleNotifierEvent.java"


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
    .line 12
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/notifier/StyleNotifierEvent;-><init>(Ljava/util/Map;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getParagraphStyle()Lcom/kingsoft/email/widget/text/Style;
    .locals 4

    .prologue
    .line 16
    sget-object v2, Lcom/kingsoft/email/widget/text/Style;->UNKNOWN:Lcom/kingsoft/email/widget/text/Style;

    .line 18
    .local v2, "style":Lcom/kingsoft/email/widget/text/Style;
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;->getStyles()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 19
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "style":Lcom/kingsoft/email/widget/text/Style;
    check-cast v2, Lcom/kingsoft/email/widget/text/Style;

    .line 23
    .restart local v2    # "style":Lcom/kingsoft/email/widget/text/Style;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/widget/text/Style;

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v0

    .line 25
    .local v0, "curStyleType":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    sget-object v2, Lcom/kingsoft/email/widget/text/Style;->UNKNOWN:Lcom/kingsoft/email/widget/text/Style;

    .line 31
    .end local v0    # "curStyleType":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    :cond_1
    return-object v2
.end method
