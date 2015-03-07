.class public Lcom/kingsoft/email/provider/CrowdSourcingObject;
.super Ljava/lang/Object;
.source "CrowdSourcingObject.java"


# instance fields
.field private mData1:Ljava/lang/String;

.field private mData2:Ljava/lang/String;

.field private mData3:Ljava/lang/String;

.field private mData4:Ljava/lang/String;

.field private mData5:Ljava/lang/String;

.field private mData6:Ljava/lang/String;

.field private mData7:Ljava/lang/String;

.field private mData8:Ljava/lang/String;

.field private mData9:Ljava/lang/String;

.field private mId:J

.field private mSourceTypeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mId:J

    .line 17
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mSourceTypeId:I

    .line 18
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData1:Ljava/lang/String;

    .line 19
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData2:Ljava/lang/String;

    .line 20
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData3:Ljava/lang/String;

    .line 21
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData4:Ljava/lang/String;

    .line 22
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData5:Ljava/lang/String;

    .line 23
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData6:Ljava/lang/String;

    .line 24
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData7:Ljava/lang/String;

    .line 25
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData8:Ljava/lang/String;

    .line 26
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData9:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getData1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData1:Ljava/lang/String;

    return-object v0
.end method

.method public getData2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData2:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mId:J

    return-wide v0
.end method

.method public getSourceTypeId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mSourceTypeId:I

    return v0
.end method

.method public setData1(Ljava/lang/String;)V
    .locals 0
    .param p1, "data1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData1:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setData2(Ljava/lang/String;)V
    .locals 0
    .param p1, "data2"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mData2:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSourceTypeId(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/kingsoft/email/provider/CrowdSourcingObject;->mSourceTypeId:I

    .line 50
    return-void
.end method
