###### Class com.applovin.exoplayer2.e.i.k.a (com.applovin.exoplayer2.e.i.k$a)
.class final Lcom/applovin/exoplayer2/e/i/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final Do:[B


# instance fields
.field private Dp:Z

.field public Dq:I

.field public fR:I

.field public tf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/e/i/k$a;->Do:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/k$a;->tf:[B

    return-void
.end method


# virtual methods
.method public B(II)Z
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    iget p2, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dq:I

    if-nez p2, :cond_16

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_16

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dq:I

    goto :goto_1f

    :cond_16
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dp:Z

    return v1

    :cond_19
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_1f

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dp:Z

    :cond_1f
    :goto_1f
    sget-object p1, Lcom/applovin/exoplayer2/e/i/k$a;->Do:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lcom/applovin/exoplayer2/e/i/k$a;->e([BII)V

    return v2
.end method

.method public Y()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dp:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dq:I

    return-void
.end method

.method public e([BII)V
    .registers 8

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->Dp:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->tf:[B

    array-length v1, v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->tf:[B

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/k$a;->tf:[B

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/k$a;->fR:I

    return-void
.end method
