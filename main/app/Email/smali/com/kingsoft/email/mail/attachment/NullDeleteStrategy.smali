.class public Lcom/kingsoft/email/mail/attachment/NullDeleteStrategy;
.super Ljava/lang/Object;
.source "NullDeleteStrategy.java"

# interfaces
.implements Lcom/kingsoft/email/mail/attachment/IFileDeleteStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)I
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 9
    const/4 v0, 0x0

    return v0
.end method
