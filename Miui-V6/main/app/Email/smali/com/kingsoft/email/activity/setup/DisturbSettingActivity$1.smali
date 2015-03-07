.class Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;
.super Ljava/lang/Object;
.source "DisturbSettingActivity.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->showTimePicker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;Z)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    iput-boolean p2, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 1
    .param p1, "timePicker"    # Lmiui/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->val$start:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # setter for: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I
    invoke-static {v0, p2}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$002(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I

    .line 123
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # setter for: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I
    invoke-static {v0, p3}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$102(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I

    .line 124
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # invokes: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForStartTime()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$200(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # setter for: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I
    invoke-static {v0, p2}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$302(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I

    .line 128
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # setter for: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I
    invoke-static {v0, p3}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$402(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I

    .line 129
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;->this$0:Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    # invokes: Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForEndTime()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->access$500(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;)V

    goto :goto_0
.end method
