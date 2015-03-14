.class public Lcom/kingsoft/email/widget/text/Style$StyleBuilder;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleBuilder"
.end annotation


# instance fields
.field private mMainArgument:Ljava/lang/Object;

.field private mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-void
.end method


# virtual methods
.method public create()Lcom/kingsoft/email/widget/text/Style;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/kingsoft/email/widget/text/Style;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/Style;-><init>(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style$1;)V

    .line 33
    .local v0, "style":Lcom/kingsoft/email/widget/text/Style;
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->mMainArgument:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/Style;->setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    .line 35
    return-object v0
.end method

.method public setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/kingsoft/email/widget/text/Style$StyleBuilder;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->mMainArgument:Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;
    .locals 0
    .param p1, "type"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 22
    return-object p0
.end method
