###### Class com.applovin.exoplayer2.f.v (com.applovin.exoplayer2.f.v)
.class public final synthetic Lcom/applovin/exoplayer2/f/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/f/l$f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/f/l$f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/v;->a:Lcom/applovin/exoplayer2/f/l$f;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/v;->a:Lcom/applovin/exoplayer2/f/l$f;

    invoke-static {v0, p1, p2}, Lcom/applovin/exoplayer2/f/l;->l(Lcom/applovin/exoplayer2/f/l$f;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
