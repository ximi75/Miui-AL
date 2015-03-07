.class public final Lcom/kingsoft/mail/preferences/MailPrefs$RemovalActions;
.super Ljava/lang/Object;
.source "MailPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/preferences/MailPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemovalActions"
.end annotation


# static fields
.field public static final ARCHIVE:Ljava/lang/String; = "archive"

.field public static final ARCHIVE_AND_DELETE:Ljava/lang/String; = "archive-and-delete"

.field public static final DELETE:Ljava/lang/String; = "delete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
