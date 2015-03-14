.class public Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
.super Ljava/lang/Object;
.source "DataPushSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/DataPushSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportSwitchResult"
.end annotation


# instance fields
.field public events:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public on:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    return-void
.end method
