.class public Lcom/kingsoft/mail/utils/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field public static final ANDROID_ARCHIVE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final EML_ATTACHMENT_CONTENT_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final GENERIC_MIMETYPE:Ljava/lang/String; = "application/octet-stream"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NULL_ATTACHMENT_CONTENT_TYPE:Ljava/lang/String; = "null"

.field private static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field private static final UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WPS_OFFICE_COMPATIBLE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 36
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "message/rfc822"

    const-string/jumbo v1, "application/eml"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/MimeType;->EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set;

    .line 48
    const-string/jumbo v0, "text/plain"

    const-string/jumbo v1, "application/msexcel"

    const-string/jumbo v2, "application/ms-excel"

    const-string/jumbo v3, "application/vnd.ms-excel"

    const-string/jumbo v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string/jumbo v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const/16 v6, 0x1b

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "application/mspowerpoint"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "application/ms-powerpoint"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "application/vnd.ms-powerpoint"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "application/vnd.openxmlformats-officedocument.presentationml.template"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "application/msword"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "application/ms-word"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "application/vnd.ms-word"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, "application/vnd.ms-works"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, "application/octet-stream"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "application/log"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string/jumbo v8, "application/kswps"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string/jumbo v8, "application/kset"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string/jumbo v8, "application/ksdps"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string/jumbo v8, "application/wps"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string/jumbo v8, "application/et"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string/jumbo v8, "application/dps"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string/jumbo v8, "application/dpt"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string/jumbo v8, "application/wpt"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string/jumbo v8, "application/ett"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string/jumbo v8, "application/pdf"

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string/jumbo v8, "text/comma-separated-values"

    aput-object v8, v6, v7

    const/16 v7, 0x19

    const-string/jumbo v8, "text/csv"

    aput-object v8, v6, v7

    const/16 v7, 0x1a

    const-string/jumbo v8, "text/xml"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/MimeType;->WPS_OFFICE_COMPATIBLE_TYPES:Ljava/util/Set;

    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 147
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 148
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local v1    # "lastDot":I
    :cond_0
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/kingsoft/mail/utils/MimeType;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    .end local p1    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 171
    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 172
    .local v2, "isTextPlain":Z
    if-nez v2, :cond_2

    const-string/jumbo v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/4 v1, 0x1

    .line 175
    .local v1, "isGenericType":Z
    :goto_1
    const/4 v3, 0x0

    .line 176
    .local v3, "type":Ljava/lang/String;
    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object p1, v3

    .line 180
    goto :goto_0

    .line 172
    .end local v1    # "isGenericType":Z
    .end local v3    # "type":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    .restart local v1    # "isGenericType":Z
    .restart local v3    # "type":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "eml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 183
    const-string/jumbo p1, "message/rfc822"

    goto :goto_0

    .line 186
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lcom/kingsoft/mail/utils/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmlMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v0, Lcom/kingsoft/mail/utils/MimeType;->EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInstallable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "application/vnd.android.package-archive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "null"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    sget-object v6, Lcom/kingsoft/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Attachment with null content type. \'%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v6, v7, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :goto_0
    return v5

    .line 93
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    sget-object v6, Lcom/kingsoft/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "content type \'%s\' is blocked. \'%s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v5

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 98
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "mimetypeIntent":Landroid/content/Intent;
    const v6, 0x80001

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    if-eqz p1, :cond_4

    .line 103
    invoke-static {v3, p1, p2}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/high16 v6, 0x10000

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 121
    sget-object v6, Lcom/kingsoft/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unable to find supporting activity. mime-type: %s, uri: %s, normalized mime-type: %s normalized uri: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v5

    aput-object p1, v8, v4

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    :cond_3
    const-string/jumbo v6, "application/zip"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    .line 126
    goto :goto_0

    .line 105
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_4
    invoke-static {v3, p2}, Lcom/kingsoft/mail/utils/Utils;->setIntentTypeAndNormalize(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "manager":Landroid/content/pm/PackageManager;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method public static isWPSOfficeCompatibleMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lcom/kingsoft/mail/utils/MimeType;->WPS_OFFICE_COMPATIBLE_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
