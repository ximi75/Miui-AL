.class public interface abstract Lorg/apache/tika/metadata/MSOffice;
.super Ljava/lang/Object;
.source "MSOffice.java"


# static fields
.field public static final APPLICATION_NAME:Ljava/lang/String; = "Application-Name"

.field public static final APPLICATION_VERSION:Ljava/lang/String; = "Application-Version"

.field public static final AUTHOR:Ljava/lang/String; = "Author"

.field public static final CATEGORY:Ljava/lang/String; = "Category"

.field public static final CHARACTER_COUNT:Ljava/lang/String; = "Character Count"

.field public static final CHARACTER_COUNT_WITH_SPACES:Ljava/lang/String; = "Character-Count-With-Spaces"

.field public static final COMMENTS:Ljava/lang/String; = "Comments"

.field public static final COMPANY:Ljava/lang/String; = "Company"

.field public static final CONTENT_STATUS:Ljava/lang/String; = "Content-Status"

.field public static final CREATION_DATE:Lorg/apache/tika/metadata/Property;

.field public static final EDIT_TIME:Ljava/lang/String; = "Edit-Time"

.field public static final KEYWORDS:Ljava/lang/String; = "Keywords"

.field public static final LAST_AUTHOR:Ljava/lang/String; = "Last-Author"

.field public static final LAST_PRINTED:Ljava/lang/String; = "Last-Printed"

.field public static final LAST_SAVED:Ljava/lang/String; = "Last-Save-Date"

.field public static final LINE_COUNT:Ljava/lang/String; = "Line-Count"

.field public static final MANAGER:Ljava/lang/String; = "Manager"

.field public static final NOTES:Ljava/lang/String; = "Notes"

.field public static final PAGE_COUNT:Ljava/lang/String; = "Page-Count"

.field public static final PARAGRAPH_COUNT:Ljava/lang/String; = "Paragraph-Count"

.field public static final PRESENTATION_FORMAT:Ljava/lang/String; = "Presentation-Format"

.field public static final REVISION_NUMBER:Ljava/lang/String; = "Revision-Number"

.field public static final SECURITY:Ljava/lang/String; = "Security"

.field public static final SLIDE_COUNT:Ljava/lang/String; = "Slide-Count"

.field public static final TEMPLATE:Ljava/lang/String; = "Template"

.field public static final TOTAL_TIME:Ljava/lang/String; = "Total-Time"

.field public static final VERSION:Ljava/lang/String; = "Version"

.field public static final WORD_COUNT:Ljava/lang/String; = "Word-Count"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "Creation-Date"

    invoke-static {v0}, Lorg/apache/tika/metadata/Property;->internalDate(Ljava/lang/String;)Lorg/apache/tika/metadata/Property;

    move-result-object v0

    .line 80
    sput-object v0, Lorg/apache/tika/metadata/MSOffice;->CREATION_DATE:Lorg/apache/tika/metadata/Property;

    .line 81
    return-void
.end method
