###### Class okio.internal.a (okio.internal.a)
.class final Lokio/internal/a;
.super Ljava/lang/Object;
.source "zip.kt"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(JJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/internal/a;->a:J

    iput-wide p3, p0, Lokio/internal/a;->b:J

    iput p5, p0, Lokio/internal/a;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lokio/internal/a;->b:J

    return-wide v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lokio/internal/a;->c:I

    return v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lokio/internal/a;->a:J

    return-wide v0
.end method
