.class public Lcom/kingsoft/exchange/provider/GalResult$GalData;
.super Ljava/lang/Object;
.source "GalResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/provider/GalResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalData"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FIRST_NAME:Ljava/lang/String; = "firstName"

.field public static final HOME_PHONE:Ljava/lang/String; = "homePhone"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAST_NAME:Ljava/lang/String; = "lastName"

.field public static final MOBILE_PHONE:Ljava/lang/String; = "mobilePhone"

.field public static final OFFICE:Ljava/lang/String; = "office"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WORK_PHONE:Ljava/lang/String; = "workPhone"


# instance fields
.field public _id:J

.field builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

.field public displayName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->_id:J

    .line 80
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "_displayName"    # Ljava/lang/String;
    .param p4, "_emailAddress"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->_id:J

    .line 71
    const-string/jumbo v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-wide p1, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->_id:J

    .line 73
    const-string/jumbo v0, "displayName"

    invoke-virtual {p0, v0, p3}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p3, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "emailAddress"

    invoke-virtual {p0, v0, p4}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p4, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/kingsoft/exchange/provider/GalResult$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Lcom/kingsoft/exchange/provider/GalResult$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/exchange/provider/GalResult$GalData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public toPackedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->builder:Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
