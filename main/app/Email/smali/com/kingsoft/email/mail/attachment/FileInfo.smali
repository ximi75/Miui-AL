.class public Lcom/kingsoft/email/mail/attachment/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private mDate:Ljava/util/Date;

.field private mDisplaySize:Ljava/lang/String;

.field private mFormatIcon:I

.field private mMime:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 0
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "size"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mMime:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mDate:Ljava/util/Date;

    .line 21
    iput-wide p4, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mSize:J

    .line 22
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDisplaySize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mDisplaySize:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatIcon()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mFormatIcon:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mSize:J

    return-wide v0
.end method

.method public setDisplaySize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mDisplaySize:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFormatIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/FileInfo;->mFormatIcon:I

    .line 43
    return-void
.end method
