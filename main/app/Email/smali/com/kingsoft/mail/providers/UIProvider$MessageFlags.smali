.class public final Lcom/kingsoft/mail/providers/UIProvider$MessageFlags;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageFlags"
.end annotation


# static fields
.field public static final CALENDAR_INVITE:I = 0x10

.field public static final CALENDAR_INVITE_ACCEPTED:I = 0x20

.field public static final CALENDAR_INVITE_DECLINED:I = 0x40

.field public static final CALENDAR_INVITE_TENTATIVED:I = 0x80

.field public static final FORWARDED:I = 0x8

.field public static final REPLIED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
