.class public interface abstract Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageRetrievalListener"
.end annotation


# virtual methods
.method public abstract loadAttachmentStatus(II)V
.end method

.method public abstract messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V
.end method
