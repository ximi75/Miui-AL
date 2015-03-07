.class public Lcom/kingsoft/mail/ui/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private firstPy:Ljava/lang/String;

.field private id:I

.field private key:Ljava/lang/String;

.field private mail:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private type:I

.field private weight:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->mail:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->weight:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AccountInfo;->getWeight()Ljava/lang/Double;

    move-result-object v0

    check-cast p1, Lcom/kingsoft/mail/ui/AccountInfo;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/AccountInfo;->getWeight()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public getFirstPy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->getFirstHanyuPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->firstPy:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->firstPy:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->mail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->toPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->mail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->toPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->toPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->pinyin:Ljava/lang/String;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->type:I

    return v0
.end method

.method public getWeight()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AccountInfo;->weight:Ljava/lang/Double;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->id:I

    .line 54
    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->mail:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->type:I

    .line 78
    return-void
.end method

.method public setWeight(Ljava/lang/Double;)V
    .locals 0
    .param p1, "weight"    # Ljava/lang/Double;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AccountInfo;->weight:Ljava/lang/Double;

    .line 21
    return-void
.end method
