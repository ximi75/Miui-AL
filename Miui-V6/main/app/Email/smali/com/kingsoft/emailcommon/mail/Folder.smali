.class public abstract Lcom/kingsoft/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;,
        Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;,
        Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;,
        Lcom/kingsoft/emailcommon/mail/Folder$FolderType;,
        Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# instance fields
.field private mIsUsingFolder:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public abstract appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract canCreate(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
.end method

.method public abstract close(Z)V
.end method

.method public closeConnection()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public abstract copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IIJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages([Lcom/kingsoft/emailcommon/mail/Flag;[Lcom/kingsoft/emailcommon/mail/Flag;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 2
    .param p1, "setFlags"    # [Lcom/kingsoft/emailcommon/mail/Flag;
    .param p2, "clearFlags"    # [Lcom/kingsoft/emailcommon/mail/Flag;
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getRole()Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/kingsoft/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getUsingFolder()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/kingsoft/emailcommon/mail/Folder;->mIsUsingFolder:Z

    return v0
.end method

.method public abstract isOpen()Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public setUsingFolder(Z)V
    .locals 0
    .param p1, "isUsing"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/kingsoft/emailcommon/mail/Folder;->mIsUsingFolder:Z

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
