###### Class com.tapjoy.internal.i0 (com.tapjoy.internal.i0)
.class public final Lcom/tapjoy/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/internal/g2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/i0;->b:Lcom/tapjoy/internal/g2;

    iput-object p2, p0, Lcom/tapjoy/internal/i0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/i0;->b:Lcom/tapjoy/internal/g2;

    iget-object v0, v0, Lcom/tapjoy/internal/g2;->b:Lcom/tapjoy/internal/a2;

    iget-object v1, p0, Lcom/tapjoy/internal/i0;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/a2;->a(Ljava/lang/String;)V

    return-void
.end method
