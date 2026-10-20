###### Class com.applovin.exoplayer2.a.d (com.applovin.exoplayer2.a.d)
.class public final synthetic Lcom/applovin/exoplayer2/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/p$a;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/a/b$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/a/b$a;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/a/d;->a:Lcom/applovin/exoplayer2/a/b$a;

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/a/d;->b:Z

    iput p3, p0, Lcom/applovin/exoplayer2/a/d;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/a/d;->a:Lcom/applovin/exoplayer2/a/b$a;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/a/d;->b:Z

    iget v2, p0, Lcom/applovin/exoplayer2/a/d;->c:I

    check-cast p1, Lcom/applovin/exoplayer2/a/b;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/exoplayer2/a/a;->i(Lcom/applovin/exoplayer2/a/b$a;ZILcom/applovin/exoplayer2/a/b;)V

    return-void
.end method
