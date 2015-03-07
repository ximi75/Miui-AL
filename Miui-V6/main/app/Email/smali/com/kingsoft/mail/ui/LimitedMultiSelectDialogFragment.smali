.class public abstract Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;
.super Landroid/app/DialogFragment;
.source "LimitedMultiSelectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;,
        Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    }
.end annotation


# static fields
.field private static final ARG_ENTRIES:Ljava/lang/String; = "entries"

.field private static final ARG_ENTRY_VALUES:Ljava/lang/String; = "entryValues"

.field private static final ARG_SELECTED_VALUES:Ljava/lang/String; = "selectedValues"


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected static populateArguments(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "fragment"    # Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "entryValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "selectedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entries"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    const-string/jumbo v1, "entryValues"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    const-string/jumbo v1, "selectedValues"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract getDialogTitle()Ljava/lang/String;
.end method

.method protected abstract getFragmentTag()Ljava/lang/String;
.end method

.method protected abstract getMaxSelectedValues()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "selectedValues"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 82
    .local v6, "selectedValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v5

    .line 84
    .local v5, "selectedValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "entryValues"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .local v1, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "entries"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getMaxSelectedValues()I

    move-result v10

    invoke-direct {v0, v8, v9, v1, v10}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    .line 89
    .local v0, "adapter":Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;
    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->setSelected(Ljava/util/Collection;)V

    .line 91
    new-instance v4, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v4, "listView":Landroid/widget/ListView;
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 93
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    new-instance v8, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;

    invoke-direct {v8, p0, v5, v0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;-><init>(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;)V

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 120
    .local v7, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 120
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "j":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    new-instance v8, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getDialogTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f10029f

    new-instance v10, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;

    invoke-direct {v10, p0, v5}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;-><init>(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;)V

    invoke-virtual {v8, v9, v10}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f100107

    new-instance v10, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$2;

    invoke-direct {v10, p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$2;-><init>(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;)V

    invoke-virtual {v8, v9, v10}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method public setListener(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    .line 151
    return-void
.end method
