.class Lorg/apache/tika/language/LanguageProfile$Counter;
.super Ljava/lang/Object;
.source "LanguageProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/language/LanguageProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Counter"
.end annotation


# instance fields
.field private count:J

.field final synthetic this$0:Lorg/apache/tika/language/LanguageProfile;


# direct methods
.method private constructor <init>(Lorg/apache/tika/language/LanguageProfile;)V
    .locals 2

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/tika/language/LanguageProfile$Counter;->this$0:Lorg/apache/tika/language/LanguageProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tika/language/LanguageProfile$Counter;->count:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/language/LanguageProfile;Lorg/apache/tika/language/LanguageProfile$Counter;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/tika/language/LanguageProfile$Counter;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/tika/language/LanguageProfile$Counter;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/apache/tika/language/LanguageProfile$Counter;->count:J

    return-wide v0
.end method

.method static synthetic access$2(Lorg/apache/tika/language/LanguageProfile$Counter;J)V
    .locals 0

    .prologue
    .line 48
    iput-wide p1, p0, Lorg/apache/tika/language/LanguageProfile$Counter;->count:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/apache/tika/language/LanguageProfile$Counter;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
