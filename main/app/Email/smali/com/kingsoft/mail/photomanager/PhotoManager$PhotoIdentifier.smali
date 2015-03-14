.class public abstract Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhotoIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAddress()Ljava/lang/Object;
.end method

.method public abstract getKey()Ljava/lang/Object;
.end method

.method public getKeyToShowInsteadOfDefault()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isValid()Z
.end method
