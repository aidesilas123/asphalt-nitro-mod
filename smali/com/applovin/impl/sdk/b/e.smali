###### Class com.applovin.impl.sdk.b.e (com.applovin.impl.sdk.b.e)
.class public final synthetic Lcom/applovin/impl/sdk/b/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/b/a$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/b/a$a;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/a$a;

    iput p2, p0, Lcom/applovin/impl/sdk/b/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/b/e;->a:Lcom/applovin/impl/sdk/b/a$a;

    iget v1, p0, Lcom/applovin/impl/sdk/b/e;->b:I

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b/a$a;->b(Lcom/applovin/impl/sdk/b/a$a;I)V

    return-void
.end method
