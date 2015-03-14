.class Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;
.super Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.source "ChipsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/ChipsTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestBaseRecipientAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/ChipsTest;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    .line 129
    invoke-direct {p0, p2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "preferredMaxResultCount"    # I
    .param p4, "queryMode"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;->this$0:Lcom/kingsoft/ex/chips/ChipsTest;

    .line 134
    invoke-direct {p0, p2, p3, p4}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 135
    return-void
.end method
