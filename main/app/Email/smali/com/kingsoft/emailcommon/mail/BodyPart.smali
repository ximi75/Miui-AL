.class public abstract Lcom/kingsoft/emailcommon/mail/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Part;


# instance fields
.field protected mParent:Lcom/kingsoft/emailcommon/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lcom/kingsoft/emailcommon/mail/Multipart;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/BodyPart;->mParent:Lcom/kingsoft/emailcommon/mail/Multipart;

    return-object v0
.end method
