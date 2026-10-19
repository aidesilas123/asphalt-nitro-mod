###### Class com.applovin.exoplayer2.h.t.c (com.applovin.exoplayer2.h.t$c)
.class final Lcom/applovin/exoplayer2/h/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic Mu:Lcom/applovin/exoplayer2/h/t;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/t;I)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t$c;->Mu:Lcom/applovin/exoplayer2/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/h/t$c;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    return p0
.end method


# virtual methods
.method public aS(J)I
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$c;->Mu:Lcom/applovin/exoplayer2/h/t;

    iget v1, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/h/t;->j(IJ)I

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$c;->Mu:Lcom/applovin/exoplayer2/h/t;

    iget v1, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/applovin/exoplayer2/h/t;->a(ILcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$c;->Mu:Lcom/applovin/exoplayer2/h/t;

    iget v1, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/h/t;->dJ(I)Z

    move-result v0

    return v0
.end method

.method public kR()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t$c;->Mu:Lcom/applovin/exoplayer2/h/t;

    iget v1, p0, Lcom/applovin/exoplayer2/h/t$c;->track:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/h/t;->dK(I)V

    return-void
.end method
