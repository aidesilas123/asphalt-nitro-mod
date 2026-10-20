###### Class com.applovin.exoplayer2.k.b0 (com.applovin.exoplayer2.k.b0)
.class public final synthetic Lcom/applovin/exoplayer2/k/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/w$b;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/k/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/k/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/b0;->a:Lcom/applovin/exoplayer2/k/n;

    return-void
.end method


# virtual methods
.method public final onNetworkTypeChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/b0;->a:Lcom/applovin/exoplayer2/k/n;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/k/n;->d(Lcom/applovin/exoplayer2/k/n;I)V

    return-void
.end method
