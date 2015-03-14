.class Lcom/beetstra/jutf7/UTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "UTF7Charset.java"


# static fields
.field private static final BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final RULE_3:Ljava/lang/String; = " \t\r\n"

.field private static final SET_D:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?"

.field private static final SET_O:Ljava/lang/String; = "!\"#$%&*;<=>@[]^_`{|}"


# instance fields
.field final directlyEncoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;
    .param p3, "includeOptional"    # Z

    .prologue
    .line 45
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n"

    iput-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:? \t\r\n"

    iput-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method canEncodeDirectly(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 58
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shift()B
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x2b

    return v0
.end method

.method unshift()B
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x2d

    return v0
.end method
