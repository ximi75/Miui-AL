.class public Lcom/kingsoft/email/mail/attachment/bean/FileBean;
.super Ljava/lang/Object;
.source "FileBean.java"


# instance fields
.field private strFileName:Ljava/lang/String;

.field private strMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/bean/FileBean;->strFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/bean/FileBean;->strMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setStrFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/bean/FileBean;->strFileName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setStrMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "strMimeType"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/bean/FileBean;->strMimeType:Ljava/lang/String;

    .line 19
    return-void
.end method
