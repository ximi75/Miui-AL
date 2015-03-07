.class public Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/ContactHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TemporaryEntry"
.end annotation


# instance fields
.field public final contactId:J

.field public final dataId:J

.field public final destination:Ljava/lang/String;

.field public final destinationLabel:Ljava/lang/String;

.field public final destinationType:I

.field public final displayName:Ljava/lang/String;

.field public final displayNameSource:I

.field public final isGalContact:Z

.field public final thumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "destination"    # Ljava/lang/String;
    .param p5, "isGalContact"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p3, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 1035
    iput-object p4, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destination:Ljava/lang/String;

    .line 1036
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationType:I

    .line 1037
    iput-object v2, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 1038
    iput-wide p1, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->contactId:J

    .line 1039
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->dataId:J

    .line 1040
    iput-object v2, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 1041
    const/16 v0, 0x28

    iput v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayNameSource:I

    .line 1042
    iput-boolean p5, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->isGalContact:Z

    .line 1043
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;IZ)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriString"    # Ljava/lang/String;
    .param p10, "displayNameSource"    # I
    .param p11, "isGalContact"    # Z

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 1022
    iput-object p2, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destination:Ljava/lang/String;

    .line 1023
    iput p3, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationType:I

    .line 1024
    iput-object p4, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 1025
    iput-wide p5, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->contactId:J

    .line 1026
    iput-wide p7, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->dataId:J

    .line 1027
    iput-object p9, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 1028
    iput p10, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayNameSource:I

    .line 1029
    iput-boolean p11, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->isGalContact:Z

    .line 1030
    return-void
.end method
