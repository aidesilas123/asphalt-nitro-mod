###### Class com.applovin.exoplayer2.e.g.b.e (com.applovin.exoplayer2.e.g.b$e)
.class final Lcom/applovin/exoplayer2/e/g/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/g/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final jA:I

.field private final zA:I

.field private zB:I

.field private zC:I

.field private final zo:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/g/a$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/a$b;->zo:Lcom/applovin/exoplayer2/l/y;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zo:Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zA:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/b$e;->jA:I

    return-void
.end method


# virtual methods
.method public iI()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->jA:I

    return v0
.end method

.method public iJ()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public iK()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zA:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    return v0

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v0

    return v0

    :cond_18
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zB:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zo:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zC:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2f
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/b$e;->zC:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
