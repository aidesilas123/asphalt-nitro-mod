###### Class com.tapjoy.internal.v0 (com.tapjoy.internal.v0)
.class public final Lcom/tapjoy/internal/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tapjoy/internal/a;

.field public final synthetic d:Lcom/tapjoy/internal/g2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g2;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/internal/v0;->d:Lcom/tapjoy/internal/g2;

    iput-object p2, p0, Lcom/tapjoy/internal/v0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/v0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/internal/v0;->c:Lcom/tapjoy/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/v0;->d:Lcom/tapjoy/internal/g2;

    iget-object v0, v0, Lcom/tapjoy/internal/g2;->b:Lcom/tapjoy/internal/a2;

    iget-object v1, p0, Lcom/tapjoy/internal/v0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/v0;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/v0;->c:Lcom/tapjoy/internal/a;

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/a2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    return-void
.end method
