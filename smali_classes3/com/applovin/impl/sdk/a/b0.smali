###### Class com.applovin.impl.sdk.a.b0 (com.applovin.impl.sdk.a.b0)
.class public final synthetic Lcom/applovin/impl/sdk/a/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/g;

.field public final synthetic b:F

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/a/g;FZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b0;->a:Lcom/applovin/impl/sdk/a/g;

    iput p2, p0, Lcom/applovin/impl/sdk/a/b0;->b:F

    iput-boolean p3, p0, Lcom/applovin/impl/sdk/a/b0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b0;->a:Lcom/applovin/impl/sdk/a/g;

    iget v1, p0, Lcom/applovin/impl/sdk/a/b0;->b:F

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/a/b0;->c:Z

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/a/g;->z(Lcom/applovin/impl/sdk/a/g;FZ)V

    return-void
.end method
