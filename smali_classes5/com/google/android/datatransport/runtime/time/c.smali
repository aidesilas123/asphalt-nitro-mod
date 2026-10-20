###### Class com.google.android.datatransport.runtime.time.c (com.google.android.datatransport.runtime.time.c)
.class public Lcom/google/android/datatransport/runtime/time/c;
.super Ljava/lang/Object;
.source "UptimeClock.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/time/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
