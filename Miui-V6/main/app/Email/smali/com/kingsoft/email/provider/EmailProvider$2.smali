.class Lcom/kingsoft/email/provider/EmailProvider$2;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;)V
    .locals 0

    .prologue
    .line 3197
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$2;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachmentChanged(Landroid/content/Context;JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "flags"    # I

    .prologue
    .line 3201
    invoke-static {p1, p2, p3, p4}, Lcom/kingsoft/email/service/AttachmentDownloadService;->attachmentChanged(Landroid/content/Context;JI)V

    .line 3202
    return-void
.end method
