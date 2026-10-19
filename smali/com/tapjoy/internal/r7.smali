###### Class com.tapjoy.internal.r7 (com.tapjoy.internal.r7)
.class public final Lcom/tapjoy/internal/r7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lcom/tapjoy/internal/r7;

.field public g:Lcom/tapjoy/internal/r7;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/r7;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/r7;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/r7;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/r7;)V
    .registers 5

    iget-object v0, p1, Lcom/tapjoy/internal/r7;->a:[B

    iget v1, p1, Lcom/tapjoy/internal/r7;->b:I

    iget v2, p1, Lcom/tapjoy/internal/r7;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/r7;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tapjoy/internal/r7;->d:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/r7;->a:[B

    iput p2, p0, Lcom/tapjoy/internal/r7;->b:I

    iput p3, p0, Lcom/tapjoy/internal/r7;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/r7;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/r7;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/r7;
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    :goto_8
    iget-object v3, p0, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v0, v3, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v0, p0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v3, v0, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v1, p0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v1, p0, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    return-object v2
.end method
