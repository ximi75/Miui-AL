.class public Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;
.super Ljava/lang/Object;
.source "ContactLoaderCallbacks.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/kingsoft/mail/ContactInfoSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingsoft/mail/ContactInfoSource;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/kingsoft/mail/ContactInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static mContactInfoMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObservable:Landroid/database/DataSetObservable;

.field private mSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    .line 48
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;)Lcom/kingsoft/mail/ContactInfo;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ContactInfo;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/kingsoft/mail/SenderInfoLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mSenders:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/SenderInfoLoader;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;>;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;>;"
    .local p2, "data":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    sput-object p2, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    .line 64
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 65
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;>;"
    return-void
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setSenders(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "emailAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mSenders:Ljava/util/Set;

    .line 53
    return-void
.end method

.method public unregisterObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
