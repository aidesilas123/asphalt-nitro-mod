###### Class com.tapjoy.internal.b1 (com.tapjoy.internal.b1)
.class public final Lcom/tapjoy/internal/b1;
.super Lcom/tapjoy/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/aa;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-direct {p0}, Lcom/tapjoy/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    return-void
.end method

.method public final onConnectSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aa;->c(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {v0}, Lcom/tapjoy/internal/aa;->b()V

    return-void
.end method
