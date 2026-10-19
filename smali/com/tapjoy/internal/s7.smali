###### Class com.tapjoy.internal.s7 (com.tapjoy.internal.s7)
.class public final Lcom/tapjoy/internal/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/s7;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/s7;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v0, :cond_b

    const-string v1, "MEDIA_ERROR_TIMED_OUT"

    invoke-virtual {v0, v1}, Lcom/tapjoy/k;->m(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
