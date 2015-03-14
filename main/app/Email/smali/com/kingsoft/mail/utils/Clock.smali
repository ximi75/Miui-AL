.class public Lcom/kingsoft/mail/utils/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final INSTANCE:Lcom/kingsoft/mail/utils/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/kingsoft/mail/utils/Clock;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/Clock;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/Clock;->INSTANCE:Lcom/kingsoft/mail/utils/Clock;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
