.class final Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/utility/TextUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterItem"
.end annotation


# instance fields
.field mAttrName:Ljava/lang/String;

.field mAttrValue:Ljava/lang/String;

.field mReg:Ljava/lang/String;

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "reg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mTag:Ljava/lang/String;

    .line 423
    iput-object p2, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mReg:Ljava/lang/String;

    .line 424
    iput-object p3, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mAttrName:Ljava/lang/String;

    .line 425
    iput-object p4, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mAttrValue:Ljava/lang/String;

    .line 426
    return-void
.end method
