.class public interface abstract Lcom/kingsoft/emailcommon/mail/Part;
.super Ljava/lang/Object;
.source "Part.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Fetchable;


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getBody()Lcom/kingsoft/emailcommon/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getContentId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getDisposition()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isMimeType(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/kingsoft/emailcommon/mail/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
