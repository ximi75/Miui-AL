.class public final Lorg/apache/tika/metadata/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/metadata/Property$PropertyType;,
        Lorg/apache/tika/metadata/Property$ValueType;
    }
.end annotation


# instance fields
.field private final choices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final internal:Z

.field private final name:Ljava/lang/String;

.field private final propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

.field private final valueType:Lorg/apache/tika/metadata/Property$ValueType;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "propertyType"    # Lorg/apache/tika/metadata/Property$PropertyType;
    .param p4, "valueType"    # Lorg/apache/tika/metadata/Property$ValueType;

    .prologue
    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "propertyType"    # Lorg/apache/tika/metadata/Property$PropertyType;
    .param p4, "valueType"    # Lorg/apache/tika/metadata/Property$ValueType;
    .param p5, "choices"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    .line 62
    iput-object p3, p0, Lorg/apache/tika/metadata/Property;->propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

    .line 63
    iput-object p4, p0, Lorg/apache/tika/metadata/Property;->valueType:Lorg/apache/tika/metadata/Property$ValueType;

    .line 64
    if-eqz p5, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "valueType"    # Lorg/apache/tika/metadata/Property$ValueType;

    .prologue
    .line 79
    sget-object v3, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "valueType"    # Lorg/apache/tika/metadata/Property$ValueType;
    .param p4, "choices"    # [Ljava/lang/String;

    .prologue
    .line 75
    sget-object v3, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static varargs externalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "choices"    # [Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static externalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static externalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static externalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalBoolean(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->BOOLEAN:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static varargs internalClosedChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "choices"    # [Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->CLOSED_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalInteger(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalIntegerSequence(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$PropertyType;->SEQ:Lorg/apache/tika/metadata/Property$PropertyType;

    sget-object v3, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static varargs internalOpenChoise(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "choices"    # [Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->OPEN_CHOICE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static internalRational(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalReal(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalText(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->TEXT:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method

.method public static internalURI(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lorg/apache/tika/metadata/Property;

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tika/metadata/Property$ValueType;->URI:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tika/metadata/Property;-><init>(Ljava/lang/String;ZLorg/apache/tika/metadata/Property$ValueType;)V

    return-object v0
.end method


# virtual methods
.method public getChoices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->choices:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->propertyType:Lorg/apache/tika/metadata/Property$PropertyType;

    return-object v0
.end method

.method public getValueType()Lorg/apache/tika/metadata/Property$ValueType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/tika/metadata/Property;->valueType:Lorg/apache/tika/metadata/Property$ValueType;

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/tika/metadata/Property;->internal:Z

    return v0
.end method
