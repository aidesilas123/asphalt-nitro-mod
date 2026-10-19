###### Class kotlinx.coroutines.AbstractTimeSourceKt (kotlinx.coroutines.AbstractTimeSourceKt)
.class public final Lkotlinx/coroutines/AbstractTimeSourceKt;
.super Ljava/lang/Object;
.source "AbstractTimeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\t\u0010\u0002\u001a\u00020\u0003H\u0081\u0008\u001a\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0080\u0008\u001a\t\u0010\u0007\u001a\u00020\u0003H\u0081\u0008\u001a\u0019\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0081\u0008\u001a\t\u0010\u000c\u001a\u00020\u0005H\u0081\u0008\u001a\t\u0010\r\u001a\u00020\u0005H\u0081\u0008\u001a\t\u0010\u000e\u001a\u00020\u0005H\u0081\u0008\u001a\u0011\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0081\u0008\u001a\t\u0010\u0012\u001a\u00020\u0005H\u0081\u0008\u001a\u0019\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u0015H\u0081\u0008\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "timeSource",
        "Lkotlinx/coroutines/AbstractTimeSource;",
        "currentTimeMillis",
        "",
        "mockTimeSource",
        "",
        "source",
        "nanoTime",
        "parkNanos",
        "blocker",
        "",
        "nanos",
        "registerTimeLoopThread",
        "trackTask",
        "unTrackTask",
        "unpark",
        "thread",
        "Ljava/lang/Thread;",
        "unregisterTimeLoopThread",
        "wrapTask",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static a:Lkotlinx/coroutines/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final synthetic access$getTimeSource$p()Lkotlinx/coroutines/b;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/AbstractTimeSourceKt;->a:Lkotlinx/coroutines/b;

    return-object v0
.end method

.method public static final synthetic access$setTimeSource$p(Lkotlinx/coroutines/b;)V
    .registers 1

    return-void
.end method

.method public static final mockTimeSource(Lkotlinx/coroutines/b;)V
    .registers 1

    invoke-static {p0}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$setTimeSource$p(Lkotlinx/coroutines/b;)V

    return-void
.end method
