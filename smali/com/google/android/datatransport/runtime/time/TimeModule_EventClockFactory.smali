###### Class com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory (com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory)
.class public final Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/time/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
    .registers 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$a;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    move-result-object v0

    return-object v0
.end method

.method public static eventClock()Lcom/google/android/datatransport/runtime/time/a;
    .registers 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/b;->a()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/time/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/runtime/time/a;
    .registers 2

    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->eventClock()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/a;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory.a (com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory$a)
.class final Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$a;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$a;->a:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    return-void
.end method

.method static synthetic a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$a;->a:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    return-object v0
.end method
