.class public Lcom/kingsoft/mail/ui/SubjectMergeInfo;
.super Ljava/lang/Object;
.source "SubjectMergeInfo.java"


# static fields
.field public static final EMPTY_SUBJECT:Ljava/lang/String; = ""

.field public static final REGULAR_EXP:Ljava/lang/String; = "^((?i)(re|rep|reply|fw|fwd|forward|\u81ea\u52a8\u8f6c\u53d1|\u81ea\u52a8\u56de\u590d|\u5feb\u901f\u56de\u590d|\u8f6c\u53d1|\u56de\u590d|\u8f49\u767c|\u56de\u8986|\u7b54\u590d%s)(\\s*)[:|\uff1a](\\s*))*"

.field private static regx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "|Re|Fwd|I.s.|\u121d\u120b\u123d\u1365|\u0631\u062f|\u041e\u0442\u0433.|Vedr.|Betreff|\u0391\u03c0.|Vasta|\u067e\u0627\u0633\u062e|VS|Objet\u00a0|\u05e0\u05d5\u05e9\u05d0|\u0909\u0924\u094d\u0924\u0930|Odgovor|V\u00e1lasz|\u10de\u10d0\u10e1\u10e3\u10ee\u10d8|\u1786\u17d2\u179b\u17be\u1799\u178f\u1794\u17d6|\ud68c\uc2e0|\u0e81\u0ec8\u0ebd\u0ea7\u0e81\u0eb1\u0e9a|Ats.|Atb.|Sv|Dot.|Res|Odgovori|\u0e40\u0e23\u0e37\u0e48\u0e2d\u0e07|Ynt|Tr\u1ea3 l\u1eddi|\u56de\u590d|\u56de\u5fa9|Mayelana"

    sput-object v0, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->regx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRawSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string/jumbo v1, ""

    .line 33
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "^((?i)(re|rep|reply|fw|fwd|forward|\u81ea\u52a8\u8f6c\u53d1|\u81ea\u52a8\u56de\u590d|\u5feb\u901f\u56de\u590d|\u8f6c\u53d1|\u56de\u590d|\u8f49\u767c|\u56de\u8986|\u7b54\u590d%s)(\\s*)[:|\uff1a](\\s*))*"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->regx:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "rawSubject":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
