.class Lcom/google/android/mail/common/base/Escaper$1;
.super Ljava/lang/Object;
.source "Escaper.java"

# interfaces
.implements Lcom/google/android/mail/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/Escaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/mail/common/base/Function",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/Escaper;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/Escaper;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/mail/common/base/Escaper$1;->this$0:Lcom/google/android/mail/common/base/Escaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/Escaper$1;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/mail/common/base/Escaper$1;->this$0:Lcom/google/android/mail/common/base/Escaper;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
