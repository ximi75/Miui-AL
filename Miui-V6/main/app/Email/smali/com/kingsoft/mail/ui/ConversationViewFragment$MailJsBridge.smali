.class Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailJsBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Lcom/kingsoft/mail/ui/ConversationViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    return-void
.end method


# virtual methods
.method public getMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "domId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1162
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 1163
    .local v0, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-boolean v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1164
    :cond_0
    const-string/jumbo v4, ""

    .line 1179
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :goto_0
    return-object v4

    .line 1167
    .restart local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_1
    const/4 v2, -0x1

    .line 1168
    .local v2, "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1169
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    .line 1170
    .local v1, "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v4, v1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1171
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1175
    .end local v1    # "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    :cond_3
    const-string/jumbo v4, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v2    # "pos":I
    :catch_0
    move-exception v3

    .line 1178
    .local v3, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Error in MailJsBridge.getMessageBody"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1179
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public getMessageSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "domId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1187
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 1188
    .local v0, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-boolean v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1189
    :cond_0
    const-string/jumbo v4, ""

    .line 1204
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :goto_0
    return-object v4

    .line 1192
    .restart local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_1
    const/4 v2, -0x1

    .line 1193
    .local v2, "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1194
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    .line 1195
    .local v1, "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v4, v1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1196
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1200
    .end local v1    # "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    :cond_3
    const-string/jumbo v4, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    .end local v2    # "pos":I
    :catch_0
    move-exception v3

    .line 1203
    .local v3, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Error in MailJsBridge.getMessageSender"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1204
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public getScrollYPercent()F
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewYPercent:F
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1200(Lcom/kingsoft/mail/ui/ConversationViewFragment;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1239
    :goto_0
    return v1

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error in MailJsBridge.getScrollYPercent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTempMessageBodies()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1145
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-boolean v2, v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-nez v2, :cond_0

    .line 1146
    const-string/jumbo v0, ""

    .line 1154
    :goto_0
    return-object v0

    .line 1149
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1100(Lcom/kingsoft/mail/ui/ConversationViewFragment;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    const/4 v3, 0x0

    # setter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1102(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1152
    .end local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1153
    .local v1, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error in MailJsBridge.getTempMessageBodies"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1154
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onContentReady()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$2;

    const-string/jumbo v2, "onContentReady"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {v1, p0, v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$2;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1230
    return-void
.end method

.method public onMessageTransform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageDomId"    # Ljava/lang/String;
    .param p2, "transformText"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1247
    :try_start_0
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TRANSFORM: (%s) %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1248
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMessageTransforms:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$1300(Lcom/kingsoft/mail/ui/ConversationViewFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->onConversationTransformed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error in MailJsBridge.onMessageTransform"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onWebContentGeometryChange([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "overlayTopStrs"    # [Ljava/lang/String;
    .param p2, "overlayBottomStrs"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;

    const-string/jumbo v2, "onWebContentGeometryChange"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge$1;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1139
    return-void
.end method
