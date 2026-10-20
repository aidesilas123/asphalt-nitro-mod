###### Class com.applovin.exoplayer2.o1 (com.applovin.exoplayer2.o1)
.class public final synthetic Lcom/applovin/exoplayer2/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/al;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/al;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/o1;->a:Lcom/applovin/exoplayer2/al;

    iput p2, p0, Lcom/applovin/exoplayer2/o1;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/o1;->a:Lcom/applovin/exoplayer2/al;

    iget v1, p0, Lcom/applovin/exoplayer2/o1;->b:I

    check-cast p1, Lcom/applovin/exoplayer2/an$b;

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/r;->W(Lcom/applovin/exoplayer2/al;ILcom/applovin/exoplayer2/an$b;)V

    return-void
.end method
