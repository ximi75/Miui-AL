.class Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/emailcommon/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailcommon/internet/MimeMessage;)V
    .locals 1

    .prologue
    .line 563
    iput-object p1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 564
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    const-class v2, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 633
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v0

    .line 635
    .local v0, "body":Lcom/kingsoft/emailcommon/mail/Body;
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-interface {v2, v0}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    return-void

    .line 636
    :catch_0
    move-exception v1

    .line 637
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 661
    const-class v0, Lcom/kingsoft/emailcommon/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 662
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 663
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 613
    const-class v0, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 614
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 591
    const-class v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 592
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 593
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 644
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const-class v2, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 668
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 670
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 671
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 602
    const-class v2, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 604
    :try_start_0
    const-string/jumbo v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailcommon/mail/Part;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/kingsoft/emailcommon/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    return-void

    .line 606
    .end local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 607
    .local v0, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    const-class v3, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 681
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 682
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 685
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    return-void

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3

    .prologue
    .line 648
    const-class v2, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 651
    :try_start_0
    new-instance v0, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 652
    .local v0, "bodyPart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/kingsoft/emailcommon/mail/BodyPart;)V

    .line 653
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    return-void

    .line 654
    .end local v0    # "bodyPart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 655
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 597
    const-class v0, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 598
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 575
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :goto_0
    return-void

    .line 578
    :cond_0
    const-class v2, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 580
    :try_start_0
    new-instance v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>()V

    .line 581
    .local v0, "m":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-interface {v2, v0}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 582
    iget-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    .end local v0    # "m":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    :catch_0
    move-exception v1

    .line 584
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    .line 618
    const-class v3, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-direct {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 620
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailcommon/mail/Part;

    .line 622
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/Part;
    :try_start_0
    new-instance v2, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 623
    .local v2, "multiPart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    invoke-interface {v0, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 624
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    return-void

    .line 625
    .end local v2    # "multiPart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
