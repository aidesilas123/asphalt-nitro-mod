###### Class com.tapjoy.internal.s6 (com.tapjoy.internal.s6)
.class public final Lcom/tapjoy/internal/s6;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/tapjoy/internal/d7;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/tapjoy/internal/s6;->a:Ljava/lang/Object;

    return-void
.end method
