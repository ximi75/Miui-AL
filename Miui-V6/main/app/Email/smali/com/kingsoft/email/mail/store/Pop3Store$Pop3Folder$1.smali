.class Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$1;
.super Ljava/lang/Object;
.source "Pop3Store.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$1;->this$1:Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)I
    .locals 3
    .param p1, "lhs"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .param p2, "rhs"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 456
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 457
    const/4 v1, 0x0

    .line 461
    :goto_0
    return v1

    .line 458
    :cond_0
    if-lez v0, :cond_1

    .line 459
    const/4 v1, -0x1

    goto :goto_0

    .line 461
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 452
    check-cast p1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder$1;->compare(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;)I

    move-result v0

    return v0
.end method
