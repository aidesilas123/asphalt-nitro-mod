###### Class com.tapjoy.internal.b8 (com.tapjoy.internal.b8)
.class public final Lcom/tapjoy/internal/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/b8;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:D

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v9, Lcom/tapjoy/internal/b8;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/tapjoy/internal/b8;-><init>(JJJD)V

    sput-object v9, Lcom/tapjoy/internal/b8;->a:Lcom/tapjoy/internal/b8;

    return-void
.end method

.method public constructor <init>(JJJD)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tapjoy/internal/b8;->b:J

    iput-wide p3, p0, Lcom/tapjoy/internal/b8;->c:J

    iput-wide p5, p0, Lcom/tapjoy/internal/b8;->d:J

    iput-wide p7, p0, Lcom/tapjoy/internal/b8;->e:D

    iput-wide p1, p0, Lcom/tapjoy/internal/b8;->f:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tapjoy/internal/b8;

    if-eq v3, v2, :cond_10

    goto :goto_3d

    :cond_10
    check-cast p1, Lcom/tapjoy/internal/b8;

    iget-wide v2, p0, Lcom/tapjoy/internal/b8;->b:J

    iget-wide v4, p1, Lcom/tapjoy/internal/b8;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/tapjoy/internal/b8;->c:J

    iget-wide v4, p1, Lcom/tapjoy/internal/b8;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/tapjoy/internal/b8;->d:J

    iget-wide v4, p1, Lcom/tapjoy/internal/b8;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/tapjoy/internal/b8;->e:D

    iget-wide v4, p1, Lcom/tapjoy/internal/b8;->e:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3b

    iget-wide v2, p0, Lcom/tapjoy/internal/b8;->f:J

    iget-wide v4, p1, Lcom/tapjoy/internal/b8;->f:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method
