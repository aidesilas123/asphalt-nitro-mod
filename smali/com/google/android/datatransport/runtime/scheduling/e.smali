###### Class com.google.android.datatransport.runtime.scheduling.e (com.google.android.datatransport.runtime.scheduling.e)
.class public abstract Lcom/google/android/datatransport/runtime/scheduling/e;
.super Ljava/lang/Object;
.source "SchedulingConfigModule.java"


# direct methods
.method static a(Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .registers 1

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->getDefault(Lcom/google/android/datatransport/runtime/time/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object p0

    return-object p0
.end method
