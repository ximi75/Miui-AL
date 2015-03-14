.class public final Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
.super Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryPartition"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public directoryId:J

.field public directoryType:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

.field public loading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 111
    return-void
.end method
