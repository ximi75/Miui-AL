.class Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;
.super Landroid/database/DataSetObserver;
.source "ConversationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationContainer;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationContainer;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ConversationContainer;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/ConversationContainer$1;

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;-><init>(Lcom/kingsoft/mail/browse/ConversationContainer;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;->this$0:Lcom/kingsoft/mail/browse/ConversationContainer;

    # invokes: Lcom/kingsoft/mail/browse/ConversationContainer;->onDataSetChanged()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->access$200(Lcom/kingsoft/mail/browse/ConversationContainer;)V

    .line 982
    return-void
.end method
