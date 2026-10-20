###### Class com.tapjoy.internal.a4 (com.tapjoy.internal.a4)
.class public final Lcom/tapjoy/internal/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/a4;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/a4;-><init>(J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/tapjoy/internal/a4;->a:J

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tapjoy/internal/a4;->b:J
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/a4;->b:J

    :goto_14
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tapjoy/internal/a4;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tapjoy/internal/a4;->b:J

    return-void
.end method
