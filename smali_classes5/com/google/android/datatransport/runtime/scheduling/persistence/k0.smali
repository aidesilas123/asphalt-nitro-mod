###### Class com.google.android.datatransport.runtime.scheduling.persistence.k0 (com.google.android.datatransport.runtime.scheduling.persistence.k0)
.class abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;
.super Ljava/lang/Object;
.source "EventStoreConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->f(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->d(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->b(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->c(J)Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    const v1, 0x14000

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->e(I)Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;->a()Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/k0;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/datatransport/runtime/scheduling/persistence/k0$a;
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/g0$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/g0$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract b()I
.end method

.method abstract c()J
.end method

.method abstract d()I
.end method

.method abstract e()I
.end method

.method abstract f()J
.end method
