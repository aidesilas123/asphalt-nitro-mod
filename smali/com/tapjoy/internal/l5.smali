###### Class com.tapjoy.internal.l5 (com.tapjoy.internal.l5)
.class public abstract Lcom/tapjoy/internal/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/internal/n;

.field public b:Lcom/tapjoy/internal/w5;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/c1;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/l5;->a:Lcom/tapjoy/internal/n;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/c1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_14

    :cond_12
    sget-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_14
    return-object v1
.end method
