###### Class com.applovin.exoplayer2.d.z (com.applovin.exoplayer2.d.z)
.class public final synthetic Lcom/applovin/exoplayer2/d/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/z;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/z;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/b;->d(Ljava/lang/Exception;Lcom/applovin/exoplayer2/d/g$a;)V

    return-void
.end method
