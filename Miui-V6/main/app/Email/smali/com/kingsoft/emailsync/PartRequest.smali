.class public Lcom/kingsoft/emailsync/PartRequest;
.super Lcom/kingsoft/emailsync/Request;
.source "PartRequest.java"


# instance fields
.field public final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field public final mContentUriString:Ljava/lang/String;

.field public final mDestination:Ljava/lang/String;

.field public final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "_att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p2, "_destination"    # Ljava/lang/String;
    .param p3, "_contentUriString"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/emailsync/Request;-><init>(J)V

    .line 35
    iput-object p1, p0, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 36
    iget-object v0, p0, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/emailsync/PartRequest;->mLocation:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/kingsoft/emailsync/PartRequest;->mDestination:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/kingsoft/emailsync/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 45
    instance-of v1, p1, Lcom/kingsoft/emailsync/PartRequest;

    if-nez v1, :cond_1

    .line 46
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/kingsoft/emailsync/PartRequest;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget-object v3, p0, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingsoft/emailsync/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    long-to-int v0, v0

    return v0
.end method
