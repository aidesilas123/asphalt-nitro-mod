###### Class kotlinx.serialization.json.internal.ByteArrayPool (kotlinx.serialization.json.internal.g)
.class public final Lkotlinx/serialization/json/internal/g;
.super Ljava/lang/Object;
.source "ByteArrayPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ByteArrayPool;",
        "",
        "()V",
        "MAX_CHARS_IN_POOL",
        "",
        "arrays",
        "Lkotlin/collections/ArrayDeque;",
        "",
        "charsTotal",
        "release",
        "",
        "array",
        "take",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/json/internal/g;

.field private static final b:Lkotlin/collections/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/j<",
            "[B>;"
        }
    .end annotation
.end field

.field private static c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/serialization/json/internal/g;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/g;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/g;->a:Lkotlinx/serialization/json/internal/g;

    new-instance v0, Lkotlin/collections/j;

    invoke-direct {v0}, Lkotlin/collections/j;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/g;->b:Lkotlin/collections/j;

    :try_start_e
    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    const-string v0, "kotlinx.serialization.json.pool.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProperty(\"kotlinx.ser\u2026lization.json.pool.size\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/g;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_2f

    :catchall_24
    move-exception v0

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v0, 0x0

    :cond_36
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_41

    :cond_3f
    const/high16 v0, 0x200000

    :goto_41
    sput v0, Lkotlinx/serialization/json/internal/g;->d:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 5

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    sget v0, Lkotlinx/serialization/json/internal/g;->c:I

    array-length v1, p1

    add-int/2addr v1, v0

    sget v2, Lkotlinx/serialization/json/internal/g;->d:I

    if-ge v1, v2, :cond_17

    array-length v1, p1

    add-int/2addr v0, v1

    sput v0, Lkotlinx/serialization/json/internal/g;->c:I

    sget-object v0, Lkotlinx/serialization/json/internal/g;->b:Lkotlin/collections/j;

    invoke-virtual {v0, p1}, Lkotlin/collections/j;->addLast(Ljava/lang/Object;)V

    :cond_17
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()[B
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lkotlinx/serialization/json/internal/g;->b:Lkotlin/collections/j;

    invoke-virtual {v0}, Lkotlin/collections/j;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_12

    sget v1, Lkotlinx/serialization/json/internal/g;->c:I

    array-length v2, v0

    sub-int/2addr v1, v2

    sput v1, Lkotlinx/serialization/json/internal/g;->c:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    monitor-exit p0

    if-nez v0, :cond_1a

    const/16 v0, 0x200

    new-array v0, v0, [B

    :cond_1a
    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
