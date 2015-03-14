.class public Lcom/kingsoft/common/Rfc822ValidatorTest;
.super Ljunit/framework/TestCase;
.source "Rfc822ValidatorTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public testEmailValidator()V
    .locals 11
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .prologue
    .line 30
    new-instance v8, Lcom/kingsoft/common/Rfc822Validator;

    const-string/jumbo v9, "gmail.com"

    invoke-direct {v8, v9}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    .line 31
    .local v8, "validator":Lcom/kingsoft/common/Rfc822Validator;
    const/4 v9, 0x7

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "a@b.com"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "a@b.fr"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "a+b@c.com"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "a@b.info"

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "john@example.com"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "john@example.fr"

    aput-object v10, v7, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "john@corp.example.com"

    aput-object v10, v7, v9

    .line 36
    .local v7, "validEmails":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 37
    .local v2, "email":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " should be a valid email address"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2}, Lcom/kingsoft/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/kingsoft/common/Rfc822ValidatorTest;->assertTrue(Ljava/lang/String;Z)V

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "email":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x7

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "a"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "a@b"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "a b"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "a@b.12"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "john@example..com"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "johnexample.com"

    aput-object v10, v5, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "john.example.com"

    aput-object v10, v5, v9

    .line 44
    .local v5, "invalidEmails":[Ljava/lang/String;
    move-object v0, v5

    array-length v6, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 45
    .restart local v2    # "email":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " should not be a valid email address"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2}, Lcom/kingsoft/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/kingsoft/common/Rfc822ValidatorTest;->assertFalse(Ljava/lang/String;Z)V

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "email":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v3, "fixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "a"

    const-string/jumbo v10, "<a@gmail.com>"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v9, "a b"

    const-string/jumbo v10, "<ab@gmail.com>"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v9, "a@b"

    const-string/jumbo v10, "<a@b>"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v9, "()~><@not.work"

    const-string/jumbo v10, ""

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Lcom/kingsoft/common/Rfc822Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingsoft/common/Rfc822ValidatorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 57
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public testEmailValidatorNullDomain()V
    .locals 6
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .prologue
    .line 61
    new-instance v3, Lcom/kingsoft/common/Rfc822Validator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "validator":Lcom/kingsoft/common/Rfc822Validator;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "fixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "a"

    const-string/jumbo v5, "<a>"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v4, "a b"

    const-string/jumbo v5, "<a b>"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v4, "a@b"

    const-string/jumbo v5, "<a@b>"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v4, "a@b.com"

    const-string/jumbo v5, "<a@b.com>"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/kingsoft/common/Rfc822Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/common/Rfc822ValidatorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public testEmailValidatorRemoveInvalid()V
    .locals 6
    .annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
    .end annotation

    .prologue
    .line 76
    new-instance v3, Lcom/kingsoft/common/Rfc822Validator;

    const-string/jumbo v4, "google.com"

    invoke-direct {v3, v4}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "validator":Lcom/kingsoft/common/Rfc822Validator;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kingsoft/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, "fixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "a"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v4, "a b"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v4, "a@b"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v4, "a@b.com"

    const-string/jumbo v5, "<a@b.com>"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/kingsoft/common/Rfc822Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/common/Rfc822ValidatorTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
