###### Class com.applovin.exoplayer2.a.c1 (com.applovin.exoplayer2.a.c1)
.class public final synthetic Lcom/applovin/exoplayer2/a/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/b$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/applovin/exoplayer2/an$e;

.field public final synthetic d:Lcom/applovin/exoplayer2/an$e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/b$a;ILcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/c1;->a:Lcom/applovin/exoplayer2/a/b$a;

    iput p2, p0, Lcom/applovin/exoplayer2/a/c1;->b:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/a/c1;->c:Lcom/applovin/exoplayer2/an$e;

    iput-object p4, p0, Lcom/applovin/exoplayer2/a/c1;->d:Lcom/applovin/exoplayer2/an$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/c1;->a:Lcom/applovin/exoplayer2/a/b$a;

    iget v1, p0, Lcom/applovin/exoplayer2/a/c1;->b:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/a/c1;->c:Lcom/applovin/exoplayer2/an$e;

    iget-object v3, p0, Lcom/applovin/exoplayer2/a/c1;->d:Lcom/applovin/exoplayer2/an$e;

    check-cast p1, Lcom/applovin/exoplayer2/a/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/a/a;->j0(Lcom/applovin/exoplayer2/a/b$a;ILcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/a/b;)V

    return-void
.end method
