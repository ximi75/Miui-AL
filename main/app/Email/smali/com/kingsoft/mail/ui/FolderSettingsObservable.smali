.class public interface abstract Lcom/kingsoft/mail/ui/FolderSettingsObservable;
.super Ljava/lang/Object;
.source "FolderSettingsObservable.java"


# virtual methods
.method public abstract getIncludedFolders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumberOfSyncDays()I
.end method

.method public abstract getPartialFolders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyChanged()V
.end method

.method public abstract registerObserver(Lcom/kingsoft/mail/ui/FolderSettingsObserver;)V
.end method

.method public abstract setIncludedFolders(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPartialFolders(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Lcom/kingsoft/mail/ui/FolderSettingsObserver;)V
.end method
