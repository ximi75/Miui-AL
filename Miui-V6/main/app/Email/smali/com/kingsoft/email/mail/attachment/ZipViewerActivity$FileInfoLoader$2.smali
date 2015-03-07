.class Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$2;
.super Ljava/lang/Object;
.source "ZipViewerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;->sortFileInfo(Ljava/util/List;I)V
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
        "Lcom/kingsoft/email/mail/attachment/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$2;->this$0:Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/email/mail/attachment/FileInfo;Lcom/kingsoft/email/mail/attachment/FileInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/kingsoft/email/mail/attachment/FileInfo;
    .param p2, "rhs"    # Lcom/kingsoft/email/mail/attachment/FileInfo;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lcom/kingsoft/email/mail/attachment/FileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/email/mail/attachment/FileInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity$FileInfoLoader$2;->compare(Lcom/kingsoft/email/mail/attachment/FileInfo;Lcom/kingsoft/email/mail/attachment/FileInfo;)I

    move-result v0

    return v0
.end method
