.class Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;
.super Ljava/lang/Object;
.source "ContiguousFIFOAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation


# instance fields
.field final callback:Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;


# direct methods
.method constructor <init>(Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;Ljava/lang/Runnable;)V
    .locals 0
    .param p3, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    .local p2, "callback":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback<TT;>;"
    iput-object p1, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->this$0:Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->callback:Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;

    .line 296
    iput-object p3, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    .line 297
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    iget-object v0, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
