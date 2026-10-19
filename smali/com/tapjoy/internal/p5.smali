###### Class com.tapjoy.internal.p5 (com.tapjoy.internal.p5)
.class public final Lcom/tapjoy/internal/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/p5;->a:Lcom/tapjoy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/p5;->a:Lcom/tapjoy/o;

    iget-object v0, v0, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v1, v1, Lcom/tapjoy/internal/v1;->o:Lcom/tapjoy/internal/g2;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/x0;->a(Lcom/tapjoy/internal/g2;)V

    return-void
.end method
