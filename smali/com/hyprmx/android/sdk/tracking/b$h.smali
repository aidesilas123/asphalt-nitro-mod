###### Class com.hyprmx.android.sdk.tracking.b.h (com.hyprmx.android.sdk.tracking.b$h)
.class public final Lcom/hyprmx/android/sdk/tracking/b$h;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/tracking/b;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate"
    f = "VideoTrackingDelegate.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5
    }
    l = {
        0x9d,
        0x30,
        0x34,
        0x38,
        0x3c,
        0x40
    }
    m = "onProgress"
    n = {
        "this",
        "$this$withLock_u24default$iv",
        "duration",
        "currentPosition",
        "this",
        "$this$withLock_u24default$iv",
        "currentPositionInSeconds",
        "progressPercentage",
        "this",
        "$this$withLock_u24default$iv",
        "currentPositionInSeconds",
        "progressPercentage",
        "this",
        "$this$withLock_u24default$iv",
        "currentPositionInSeconds",
        "progressPercentage",
        "this",
        "$this$withLock_u24default$iv",
        "currentPositionInSeconds",
        "$this$withLock_u24default$iv",
        "currentPositionInSeconds"
    }
    s = {
        "L$0",
        "L$1",
        "J$0",
        "J$1",
        "L$0",
        "L$1",
        "J$0",
        "F$0",
        "L$0",
        "L$1",
        "J$0",
        "F$0",
        "L$0",
        "L$1",
        "J$0",
        "F$0",
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "J$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Iterator;

.field public d:J

.field public e:J

.field public f:F

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/hyprmx/android/sdk/tracking/b;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/tracking/b;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/tracking/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/tracking/b$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b$h;->h:Lcom/hyprmx/android/sdk/tracking/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/hyprmx/android/sdk/tracking/b$h;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/tracking/b$h;->i:I

    iget-object v0, p0, Lcom/hyprmx/android/sdk/tracking/b$h;->h:Lcom/hyprmx/android/sdk/tracking/b;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hyprmx/android/sdk/tracking/b;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
