###### Class com.tapjoy.internal.d8 (com.tapjoy.internal.d8)
.class public final Lcom/tapjoy/internal/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/p8;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/p8;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/d8;->a:Lcom/tapjoy/internal/p8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/d8;->a:Lcom/tapjoy/internal/p8;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p8;->e()V

    return-void
.end method
