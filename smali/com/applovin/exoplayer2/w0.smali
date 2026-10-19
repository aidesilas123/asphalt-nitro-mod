###### Class com.applovin.exoplayer2.w0 (com.applovin.exoplayer2.w0)
.class public final synthetic Lcom/applovin/exoplayer2/w0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/applovin/exoplayer2/an$e;

.field public final synthetic c:Lcom/applovin/exoplayer2/an$e;


# direct methods
.method public synthetic constructor <init>(ILcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/w0;->a:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/w0;->b:Lcom/applovin/exoplayer2/an$e;

    iput-object p3, p0, Lcom/applovin/exoplayer2/w0;->c:Lcom/applovin/exoplayer2/an$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/w0;->a:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/w0;->b:Lcom/applovin/exoplayer2/an$e;

    iget-object v2, p0, Lcom/applovin/exoplayer2/w0;->c:Lcom/applovin/exoplayer2/an$e;

    check-cast p1, Lcom/applovin/exoplayer2/an$b;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/exoplayer2/r;->i(ILcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method
