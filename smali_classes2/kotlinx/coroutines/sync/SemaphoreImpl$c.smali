###### Class kotlinx.coroutines.sync.SemaphoreImpl.c (kotlinx.coroutines.sync.SemaphoreImpl$c)
.class final synthetic Lkotlinx/coroutines/sync/SemaphoreImpl$c;
.super Lkotlin/jvm/internal/r;
.source "Semaphore.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/SemaphoreImpl;->s()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/sync/b;",
        "Lkotlinx/coroutines/sync/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/sync/SemaphoreImpl$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl$c;

    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl$c;->a:Lkotlinx/coroutines/sync/SemaphoreImpl$c;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlinx/coroutines/sync/SemaphoreKt;

    const/4 v1, 0x2

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(JLkotlinx/coroutines/sync/b;)Lkotlinx/coroutines/sync/b;
    .registers 4

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$createSegment(JLkotlinx/coroutines/sync/b;)Lkotlinx/coroutines/sync/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlinx/coroutines/sync/b;

    invoke-virtual {p0, v0, v1, p2}, Lkotlinx/coroutines/sync/SemaphoreImpl$c;->a(JLkotlinx/coroutines/sync/b;)Lkotlinx/coroutines/sync/b;

    move-result-object p1

    return-object p1
.end method
