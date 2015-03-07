.class public Lcom/kingsoft/mail/photomanager/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field public static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingsoft/mail/photomanager/MemoryUtils;->sTotalMemorySize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 5

    .prologue
    .line 27
    sget-wide v1, Lcom/kingsoft/mail/photomanager/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 28
    new-instance v0, Lcom/kingsoft/mail/photomanager/MemInfoReader;

    invoke-direct {v0}, Lcom/kingsoft/mail/photomanager/MemInfoReader;-><init>()V

    .line 29
    .local v0, "reader":Lcom/kingsoft/mail/photomanager/MemInfoReader;
    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->readMemInfo()V

    .line 35
    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    sput-wide v1, Lcom/kingsoft/mail/photomanager/MemoryUtils;->sTotalMemorySize:J

    .line 37
    :cond_0
    sget-wide v1, Lcom/kingsoft/mail/photomanager/MemoryUtils;->sTotalMemorySize:J

    return-wide v1
.end method
