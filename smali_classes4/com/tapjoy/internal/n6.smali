###### Class com.tapjoy.internal.n6 (com.tapjoy.internal.n6)
.class public final Lcom/tapjoy/internal/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJCacheListener;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/y3;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/n6;->a:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/n6;->a:Lcom/tapjoy/TJCacheListener;

    invoke-interface {v0, p1}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    return-void
.end method
