.class public interface abstract Lcom/kingsoft/email/widget/text/IStyleable;
.super Ljava/lang/Object;
.source "IStyleable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/IStyleable$StyleType;,
        Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    }
.end annotation


# virtual methods
.method public abstract clearStyle(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V
.end method

.method public abstract getSelectionFullMatchedStyles()Ljava/util/Map;
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
.end method

.method public abstract getShouldAppliedStyles()Ljava/util/Map;
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
.end method

.method public abstract getShouldRemovedStyles()Ljava/util/Map;
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
.end method

.method public abstract setStyle(Lcom/kingsoft/email/widget/text/Style;)V
.end method
